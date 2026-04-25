import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/app_theme.dart';

class DashboardTitleWidget extends StatelessWidget {
  const DashboardTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.dashboardTitle, // Localized
              style: theme.textTheme.headlineMedium,
            ),
            const SizedBox(height: 4),
            Text(
              l10n.dashboardSubtitle, // Localized
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