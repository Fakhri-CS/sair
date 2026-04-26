import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view/routes.dart';
import 'package:sair_cpa/view_model/notifications_view_provider.dart';

class NotificationWidget extends ConsumerWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final notifications = ref.watch(notificationsProvider);
    final hasNotifications = notifications.maybeWhen(
      data: (list) => list.isNotEmpty,
      orElse: () => false,
    );

    return Stack(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoute.notifiactionScreen.route);
          },
          icon: const Icon(Icons.notifications_none_outlined),
          style: IconButton.styleFrom(
            iconSize: 24,
            foregroundColor: theme.colorScheme.onSurface,
          ),
        ),
        if (hasNotifications)
          Positioned(
            right: 15,
            top: 12,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                shape: BoxShape.circle,
              ),
            ),
          ),
      ],
    );
  }
}
