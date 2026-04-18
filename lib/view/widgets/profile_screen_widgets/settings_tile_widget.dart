import 'package:flutter/material.dart';

class SettingsTileWidget extends StatelessWidget {
  const SettingsTileWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.isDestructive = false,
  });
  final IconData icon;
  final String title, subtitle;
  final bool isDestructive;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mainColor = isDestructive
        ? theme.colorScheme.error
        : theme.colorScheme.onSurface;
    final subColor = isDestructive
        ? theme.colorScheme.error.withValues(alpha: 0.7)
        : theme.textTheme.bodyMedium?.color;
    final iconBgColor = isDestructive
        ? theme.colorScheme.error.withValues(alpha: 0.1)
        : theme.dividerTheme.color?.withValues(alpha: 0.3) ??
              Colors.grey.shade100;

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: iconBgColor, shape: BoxShape.circle),
        child: Icon(icon, color: mainColor, size: 20),
      ),
      title: Text(
        title,
        style: theme.textTheme.titleMedium?.copyWith(
          color: mainColor,
          fontSize: 15,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: subColor,
          fontSize: 12,
        ),
      ),
      trailing: isDestructive
          ? null
          : Icon(
              Icons.chevron_right,
              color: theme.textTheme.bodyMedium?.color,
              size: 20,
            ),
      onTap: () {
        // Handle tap logic
      },
    );
  }
}
