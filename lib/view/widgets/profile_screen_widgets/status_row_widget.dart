import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view/widgets/profile_screen_widgets/status_card_widget.dart';
import 'package:sair_cpa/view_model/reports_provider.dart';
import 'package:sair_cpa/view_model/user_view_provider.dart';
import 'package:sair_cpa/core/extensions/enum_extensions.dart';

class StatusRowWidget extends ConsumerWidget {
  const StatusRowWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final reportsState = ref.watch(reportsProvider);
    final profileState = ref.watch(userProfileProvider);

    final reportCount = reportsState.when(
      data: (reports) => reports.length.toString(),
      loading: () => "...",
      error: (_, __) => "0",
    );

    final accountStatus = profileState.when(
      data: (profile) => profile != null ? profile.role.value.toUpperCase() : "GUEST",
      loading: () => "...",
      error: (_, __) => "ERROR",
    );

    return Row(
      children: [
        Expanded(
          child: StatusCardWidget(
            icon: Icons.assignment_outlined,
            iconBgColor: theme.primaryColor.withValues(alpha: 0.05),
            iconColor: theme.primaryColor,
            value: reportCount,
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
            value: accountStatus,
            label: "ACCOUNT STATUS",
          ),
        ),
      ],
    );
  }
}
