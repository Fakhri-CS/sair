// notifications_view_model.dart
import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/model/notificatoin_model.dart';
// import 'notification_model.dart';

class NotificationsViewModel extends AsyncNotifier<List<NotificationModel>> {
  
  @override
  FutureOr<List<NotificationModel>> build() async {
    // Automatically fetch notifications when the screen opens
    return _fetchNotifications();
  }

  Future<List<NotificationModel>> _fetchNotifications() async {
    // TODO: Replace this with your actual HTTP GET request
    // final response = await http.get(Uri.parse('YOUR_API/notifications'), headers: {...});
    // final List<dynamic> data = json.decode(response.body);
    // return data.map((json) => NotificationModel.fromJson(json)).toList();

    await Future.delayed(const Duration(seconds: 1)); // Simulate network latency
    return [
      NotificationModel(
        id: "1",
        userId: "user_123",
        title: "Report Approved",
        message: "Your accident report has been successfully reviewed and approved.",
        reportId: "rep_456",
        createdAt: DateTime.now().subtract(const Duration(minutes: 5)),
      ),
      NotificationModel(
        id: "2",
        userId: "user_123",
        title: "Under Review",
        message: "An agent is currently reviewing your submitted evidence.",
        reportId: "rep_456",
        createdAt: DateTime.now().subtract(const Duration(hours: 2)),
      ),
    ];
  }

  // Allow the UI to pull-to-refresh
  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetchNotifications());
  }
}

final notificationsProvider = AsyncNotifierProvider.autoDispose<NotificationsViewModel, List<NotificationModel>>(
  NotificationsViewModel.new,
);