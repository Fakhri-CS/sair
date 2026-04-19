import 'package:flutter/material.dart';

class LocationTextButtionWidget extends StatelessWidget {
  const LocationTextButtionWidget({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton.icon(
      onPressed: onTap,
      icon: Icon(Icons.location_on, size: 20, color: theme.primaryColor),
      label: Text(
        text,
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        textAlign: .center,
      ),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}
