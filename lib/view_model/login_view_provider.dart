import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/service/auth_service.dart';
import 'package:sair_cpa/service/storage_service.dart';
import 'package:sair_cpa/model/login_response.dart';
import 'package:sair_cpa/model/me_response.dart';
import 'package:sair_cpa/core/network/api_client.dart';
import 'package:sair_cpa/view_model/user_view_provider.dart';

class LoginViewModel extends AsyncNotifier<LoginResponse?> {
  
  @override
  FutureOr<LoginResponse?> build() {
    return null;
  }

  Future<void> login(String email, String password) async {
    state = const AsyncLoading();

    final authService = ref.read(authServiceProvider);
    
    final result = await AsyncValue.guard(() async {
      final response = await authService.login(email, password);
      
      // Persist token
      await ref.read(storageServiceProvider).saveToken(response.token);
      
      // Inject token into ApiClient immediately
      ApiClient().setToken(response.token);
      
      // Map LoginResponse user to MeResponse and set it directly
      final me = MeResponse(
        uid: response.user.id,
        role: response.user.role,
        email: response.user.email,
        token: response.token,
      );
      
      ref.read(userProfileProvider.notifier).setProfile(me);
      
      return response;
    });

    state = result;
  }
}

final loginViewModelProvider = AsyncNotifierProvider<LoginViewModel, LoginResponse?>(
  LoginViewModel.new,
);
