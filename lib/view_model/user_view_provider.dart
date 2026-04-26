import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/service/user_service.dart';
import 'package:sair_cpa/service/storage_service.dart';
import 'package:sair_cpa/model/me_response.dart';
import 'package:sair_cpa/core/network/api_client.dart';

import 'package:sair_cpa/service/auth_service.dart';

class UserProfileViewModel extends AsyncNotifier<MeResponse?> {
  
  @override
  FutureOr<MeResponse?> build() async {
    return _initProfile();
  }

  Future<MeResponse?> _initProfile() async {
    final storageService = ref.read(storageServiceProvider);
    final token = await storageService.getToken();
    
    if (token != null) {
      // Restore token to ApiClient
      ApiClient().setToken(token);
      return _fetchProfile();
    }
    return null;
  }

  Future<MeResponse?> _fetchProfile() async {
    final userService = ref.read(userServiceProvider);
    try {
      final profile = await userService.getMe();
      return profile;
    } catch (e) {
      // If unauthorized, clear token
      if (e.toString().contains('401') || e.toString().contains('403')) {
        await ref.read(storageServiceProvider).clearToken();
        ApiClient().setToken(null);
      }
      return null;
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetchProfile());
  }

  void setProfile(MeResponse profile) {
    state = AsyncValue.data(profile);
  }

  /// Performs a full logout: calls backend, clears storage, and resets state
  Future<void> logout() async {
    try {
      // 1. Call backend logout (optional, best effort)
      await ref.read(authServiceProvider).logout();
    } catch (_) {}

    // 2. Clear secure storage
    await ref.read(storageServiceProvider).clearToken();

    // 3. Clear ApiClient token
    ApiClient().setToken(null);

    // 4. Reset state
    state = const AsyncValue.data(null);
  }
}

final userProfileProvider = AsyncNotifierProvider<UserProfileViewModel, MeResponse?>(
  UserProfileViewModel.new,
);
