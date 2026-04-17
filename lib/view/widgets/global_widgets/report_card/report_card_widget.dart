import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/global_widgets/report_card/info_row_widget.dart';
import 'package:sair_cpa/view/widgets/global_widgets/report_card/status_badge_widget.dart';

class ReportCardWidget extends StatelessWidget {
  final String reportId;
  final String
  status;
  final String submittedDate;
  final String location;
  final String category;
  final VoidCallback onViewDetails;

  const ReportCardWidget({
    super.key,
    required this.reportId,
    required this.status,
    required this.submittedDate,
    required this.location,
    required this.category,
    required this.onViewDetails,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: theme.dividerTheme.color ?? Colors.grey.shade200,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "REPORT ID",
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: Colors.grey.shade500,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    reportId,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              StatusBadgeWidget(currentStatus: status),
            ],
          ),
          const SizedBox(height: 20),

          InfoRowWidget(
            icon: Icons.calendar_today_outlined,
            label: "SUBMITTED ON",
            value: submittedDate,
          ),
          const SizedBox(height: 16),

          InfoRowWidget(
            icon: Icons.location_on_outlined,
            label: "LOCATION",
            value: location,
          ),
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F6F9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  category,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              InkWell(
                onTap: onViewDetails,
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "View Details",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        Icons.chevron_right,
                        size: 16,
                        color: theme.primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
