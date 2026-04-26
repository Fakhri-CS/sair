import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/model/notification_model.dart';
import 'package:sair_cpa/service/notification_service.dart';

class NotificationsViewModel extends AsyncNotifier<List<NotificationModel>> {
  
  @override
  FutureOr<List<NotificationModel>> build() async {
    // Automatically fetch notifications when the screen opens
    return _fetchNotifications();
  }

  Future<List<NotificationModel>> _fetchNotifications() async {
    final notificationService = ref.read(notificationServiceProvider);
    return await notificationService.getNotifications();
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