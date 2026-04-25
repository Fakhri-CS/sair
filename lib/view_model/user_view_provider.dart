import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/service/user_service.dart';
import 'package:sair_cpa/service/storage_service.dart';
import 'package:sair_cpa/model/me_response.dart';
import 'package:sair_cpa/core/network/api_client.dart';

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
      print("DEBUG: Profile fetch failed: $e");
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
}

final userProfileProvider = AsyncNotifierProvider<UserProfileViewModel, MeResponse?>(
  UserProfileViewModel.new,
);
