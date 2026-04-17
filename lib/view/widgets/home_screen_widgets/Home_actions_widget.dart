import 'package:flutter/material.dart';

class HomeActionsWidget extends StatelessWidget {
  const HomeActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        const SizedBox(width: 4),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.language,
            size: 18,
            color: theme.textTheme.bodyMedium!.color,
          ),
          label: Text(
            "EN",
            style: theme.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
              color: theme.colorScheme.onSurface,
            ),
          ),
        ),
        // Notification Icon with or without red dot
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined),
              style: IconButton.styleFrom(
                iconSize: 24,
                foregroundColor: theme.colorScheme.onSurface,
              ),
            ),
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
        ),
      ],
    );
  }
}
