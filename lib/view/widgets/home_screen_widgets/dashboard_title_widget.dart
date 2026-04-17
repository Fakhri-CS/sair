import 'package:flutter/material.dart';
import 'package:sair_cpa/view/app_theme.dart';

class DashboardTitleWidget extends StatelessWidget {
  const DashboardTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Your Dashboard", style: theme.textTheme.headlineMedium),
            const SizedBox(height: 4),
            Text(
              "Everything looks secure today.",
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        Stack(
          children: [
            const CircleAvatar(
              radius: 22,
              backgroundColor: AppTheme.borderLight,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: Colors.green, // Online status indicator
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: theme.colorScheme.surface,
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
