import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/report_details_widgets.dart/progress_card_item_widget.dart';

class ReportProgressCardWidget extends StatelessWidget {
  const ReportProgressCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Report Progress",
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 24),

          const ProgressCardItemWidget(
            title: "Report Approved",
            timestamp: "Oct 24, 2023 • 02:30 PM",
            isLast: false,
          ),
          const ProgressCardItemWidget(
            title: "Under Review",
            timestamp: "Oct 24, 2023 • 11:15 AM",
            isLast: false,
          ),
          const ProgressCardItemWidget(
            title: "Report Received",
            timestamp: "Oct 24, 2023 • 10:50 AM",
            isLast: true,
          ),
        ],
      ),
    );
  }
}
