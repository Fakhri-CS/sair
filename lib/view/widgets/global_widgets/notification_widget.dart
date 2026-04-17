import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none_outlined),
          style: IconButton.styleFrom(
            iconSize: 24,
            foregroundColor: theme.colorScheme.onSurface,
          ),
        ),
        // Notification Icon with or without red dot (just add if condition)
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
