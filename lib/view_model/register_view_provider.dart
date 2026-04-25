import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/service/auth_service.dart';
import 'package:sair_cpa/model/user_model.dart';

class RegisterViewModel extends AsyncNotifier<UserModel?> {
  
  @override
  FutureOr<UserModel?> build() {
    return null;
  }

  Future<void> register(Map<String, dynamic> request) async {
    state = const AsyncLoading();

    final authService = ref.read(authServiceProvider);
    
    state = await AsyncValue.guard(() async {
      return await authService.register(request);
    });
  }
}

final registerViewModelProvider = AsyncNotifierProvider.autoDispose<RegisterViewModel, UserModel?>(
  RegisterViewModel.new,
);
