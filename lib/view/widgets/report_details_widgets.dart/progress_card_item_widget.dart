import 'package:flutter/material.dart';

class ProgressCardItemWidget extends StatelessWidget {
  const ProgressCardItemWidget({
    super.key,
    required this.title,
    required this.timestamp,
    required this.isLast,
  });
  final String title, timestamp;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(bottom: isLast ? 0 : 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color:
                    theme.dividerTheme.color ??
                    theme.dividerColor.withValues(alpha: 0.3),
                width: 2,
              ),
            ),
            child: Icon(
              Icons.check_circle_outline,
              size: 20,
              color: theme.colorScheme.onSurface,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 2),
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  timestamp,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
