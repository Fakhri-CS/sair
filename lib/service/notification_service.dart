import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/core/network/api_service.dart';
import 'package:sair_cpa/core/network/api_endpoints.dart';
import 'package:sair_cpa/model/notification_model.dart';

class NotificationService {
  final ApiService _apiService;

  NotificationService(this._apiService);

  /// Fetches the list of notifications for the authenticated user.
  Future<List<NotificationModel>> getNotifications() async {
    try {
      final response = await _apiService.get(kNotificationsEndpoint);
      
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => NotificationModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load notifications: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching notifications: $e');
    }
  }
}

/// Provider for [NotificationService].
final notificationServiceProvider = Provider<NotificationService>((ref) {
  return NotificationService(ApiService());
});
