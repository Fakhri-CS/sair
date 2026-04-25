import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/widgets/profile_screen_widgets/status_card_widget.dart';

class StatusRowWidget extends StatelessWidget {
  const StatusRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization

    return Row(
      children: [
        Expanded(
          child: StatusCardWidget(
            icon: Icons.assignment_outlined,
            iconBgColor: theme.primaryColor.withValues(alpha: 0.05),
            iconColor: theme.primaryColor,
            value: "12", // Tip: Replace with dynamic data from a provider later
            label: l10n.totalReportsLabel, // Localized
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: StatusCardWidget(
            icon: Icons.check_circle_outline,
            iconBgColor:
                theme.dividerTheme.color?.withValues(alpha: 0.3) ??
                Colors.grey.shade100,
            iconColor: theme.colorScheme.onSurface,
            value: l10n.accountStatusVerified, // Localized
            label: l10n.accountStatusLabel, // Localized
          ),
        ),
      ],
    );
  }
}