import 'package:flutter/material.dart';

class NotificationTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool value;
  final ValueChanged<bool>? onChanged;
  final bool isFirst;
  final bool isLast;

  const NotificationTileWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.value,
    this.onChanged,
    required this.isFirst,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDisabled = onChanged == null;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isDisabled
                  ? theme.colorScheme.onSurface.withValues(alpha: 0.02)
                  : value
                  ? theme.primaryColor.withValues(alpha: 0.1)
                  : theme.colorScheme.onSurface.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              size: 20,
              color: isDisabled
                  ? theme.colorScheme.onSurface.withValues(alpha: 0.3)
                  : value
                  ? theme.primaryColor
                  : theme.colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: isDisabled
                        ? theme.colorScheme.onSurface.withValues(alpha: 0.4)
                        : theme.colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: isDisabled
                        ? theme.colorScheme.onSurface.withValues(alpha: 0.3)
                        : theme.colorScheme.onSurface.withValues(alpha: 0.5),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          Switch.adaptive(
            value: value,
            onChanged: onChanged,
            activeThumbColor: theme.primaryColor,
          ),
        ],
      ),
    );
  }
}
