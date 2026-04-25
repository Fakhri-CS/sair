
// import 'dart:async';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// // Import your model and repository

// class RegisterViewModel extends AutoDisposeAsyncNotifier<void> {
//   final AuthRepository _repository = AuthRepository(); // Ideally injected via another provider

//   @override
//   FutureOr<void> build() {
//     // Initial state is just 'data' (not doing anything yet)
//   }

//   Future<void> register(RegisterRequest request) async {

//     state = const AsyncLoading();

//     // 2. Wrap the repository call in a guard to catch errors securely
//     state = await AsyncValue.guard(() async {
//       await _repository.registerCitizen(request);
//     });
//   }
// }

// final registerViewModelProvider = AsyncNotifierProvider.autoDispose<RegisterViewModel, void>(
//   RegisterViewModel.new,
// );