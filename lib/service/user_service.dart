import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/core/network/api_service.dart';
import 'package:sair_cpa/core/network/api_endpoints.dart';
import 'package:sair_cpa/model/user_model.dart';
import 'package:sair_cpa/model/me_response.dart';

class UserService {
  final ApiService _apiService;

  UserService(this._apiService);

  /// Fetches the current user profile.
  Future<MeResponse> getMe() async {
    try {
      final response = await _apiService.get(kMeEndpoint);
      
      if (response.statusCode == 200) {
        return MeResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to fetch user profile: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching profile: $e');
    }
  }

  /// Lists all registered users (Admin only).
  Future<List<UserModel>> getUsers() async {
    try {
      final response = await _apiService.get(kUsersEndpoint);
      
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data is List ? response.data : (response.data['users'] ?? []);
        return data.map((json) => UserModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to list users: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error listing users: $e');
    }
  }
}

/// Provider for [UserService].
final userServiceProvider = Provider<UserService>((ref) {
  return UserService(ApiService());
});
