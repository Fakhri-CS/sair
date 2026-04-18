import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/profile_screen_widgets/status_card_widget.dart';

class StatusRowWidget extends StatelessWidget {
  const StatusRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: StatusCardWidget(
            icon: Icons.assignment_outlined,
            iconBgColor: theme.primaryColor.withValues(alpha: 0.05),
            iconColor: theme.primaryColor,
            value: "12",
            label: "TOTAL REPORTS",
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
            value: "VERIFIED",
            label: "ACCOUNT STATUS",
          ),
        ),
      ],
    );
  }
}
