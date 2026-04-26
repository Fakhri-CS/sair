// notifications_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/widgets/notification_screen_widgets/notification_card_widget.dart';
import 'package:sair_cpa/view/widgets/notification_screen_widgets/notification_empty_state_widget.dart';
import 'package:sair_cpa/view_model/notifications_view_provider.dart';
// import 'notifications_view_model.dart';
// import 'notification_model.dart';

class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final notificationsState = ref.watch(notificationsProvider);
    final l10n = S.of(context); // Initialize localization

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface,
        elevation: 0,
        title: Text(
          l10n.notificationsTitle, // Localized string
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: notificationsState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, size: 48, color: theme.colorScheme.error),
              const SizedBox(height: 16),
              Text(
                l10n.failedToLoadNotifications, // Localized string
                style: theme.textTheme.bodyLarge,
              ),
              TextButton(
                onPressed: () => ref.read(notificationsProvider.notifier).refresh(),
                child: Text(l10n.tryAgainBtn), // Localized string
              ),
            ],
          ),
        ),
        data: (notifications) {
          if (notifications.isEmpty) {
            return const NotificationEmptyStateWidget();
          }

          return RefreshIndicator(
            onRefresh: () => ref.read(notificationsProvider.notifier).refresh(),
            color: theme.primaryColor,
            child: ListView.separated(
              padding: const EdgeInsets.all(16.0),
              itemCount: notifications.length,
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                return NotificationCardWidget(notification:  notifications[index]);
              },
            ),
          );
        },
      ),
    );
  }
}