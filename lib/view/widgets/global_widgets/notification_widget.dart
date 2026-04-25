import 'package:flutter/material.dart';
import 'package:sair_cpa/view/routes.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        IconButton(
          onPressed: () {Navigator.pushNamed(context, AppRoute.notifiactionScreen.route);},
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
    );
  }
}
