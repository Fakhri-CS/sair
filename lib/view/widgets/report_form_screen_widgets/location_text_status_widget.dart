import 'package:flutter/material.dart';

class LocationTextStatusWidget extends StatelessWidget {
  const LocationTextStatusWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Text(
        text,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.7),
        ),
      ),
    );
  }
}
