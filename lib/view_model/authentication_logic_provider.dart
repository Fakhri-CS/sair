import 'package:flutter_riverpod/flutter_riverpod.dart';

final nationalIdValidatorProvider = Provider.family<String?, String?>((
  _,
  value,
) {
  if (value == null || value.trim().isEmpty) {
    return 'Please enter your National ID';
  }
  return null;
});

final passwordValidatorProvider = Provider.family<String?, String?>((_, value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a password';
  }
  if (value.length < 6) {
    return 'Password must be at least 6 characters';
  }
  return null;
});
