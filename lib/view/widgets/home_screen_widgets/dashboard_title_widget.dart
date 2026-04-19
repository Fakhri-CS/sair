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
        const CircleAvatar(
          radius: 22,
          backgroundColor: AppTheme.borderLight,
          child: Icon(Icons.person),
        ),
      ],
    );
  }
}
