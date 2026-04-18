import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Text(
        "Sear App v2.4.0 • Government Services Portal",
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.5),
        ),
      ),
    );
  }
}
