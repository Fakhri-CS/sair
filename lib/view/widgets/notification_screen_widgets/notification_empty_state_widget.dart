import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import

class NotificationEmptyStateWidget extends StatelessWidget {
  const NotificationEmptyStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.notifications_off_outlined,
            size: 64,
            color: theme.dividerTheme.color, // Fixed access to divider color
          ),
          const SizedBox(height: 16),
          Text(
            l10n.noNotificationsYet, // Localized
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
    );
  }
}