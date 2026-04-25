import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/core/network/api_service.dart';
import 'package:sair_cpa/core/network/api_endpoints.dart';
import 'package:sair_cpa/model/login_response.dart';
import 'package:sair_cpa/model/user_model.dart';

class AuthService {
  final ApiService _apiService;

  AuthService(this._apiService);

  /// Registers a new user.
  Future<UserModel> register(Map<String, dynamic> data) async {
    try {
      final response = await _apiService.post(kRegisterEndpoint, data: data);
      
      if (response.statusCode == 201 || response.statusCode == 200) {
        return UserModel.fromJson(response.data['user'] ?? response.data);
      } else {
        throw Exception('Failed to register: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error during registration: $e');
    }
  }

  /// Logs in a user.
  Future<LoginResponse> login(String email, String password) async {
    try {
      final response = await _apiService.post(kLoginEndpoint, data: {
        'email': email,
        'password': password,
      });
      
      if (response.statusCode == 200) {
        return LoginResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to login: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error during login: $e');
    }
  }

  /// Logs out the current user.
  Future<void> logout() async {
    try {
      final response = await _apiService.post(kLogoutEndpoint);
      if (response.statusCode != 200 && response.statusCode != 204) {
        throw Exception('Failed to logout: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error during logout: $e');
    }
  }
}

/// Provider for [AuthService].
final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService(ApiService());
});
