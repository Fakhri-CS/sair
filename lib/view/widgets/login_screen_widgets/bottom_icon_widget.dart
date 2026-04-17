import 'package:flutter/material.dart';

class BottomIconWidget extends StatelessWidget {
  const BottomIconWidget({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border.all(
          color: theme.dividerTheme.color ?? theme.dividerColor,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, size: 20, color: theme.colorScheme.onSurface),
    );
  }
}
