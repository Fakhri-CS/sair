import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/routes.dart';
import 'package:sair_cpa/view_model/is_preview_mode_provider.dart';
import 'package:sair_cpa/view/widgets/global_widgets/report_card/info_row_widget.dart';
import 'package:sair_cpa/view/widgets/global_widgets/report_card/status_badge_widget.dart';
import 'package:sair_cpa/model/report_model.dart';
import 'package:sair_cpa/view_model/selected_report_provider.dart';
import 'package:sair_cpa/core/extensions/enum_extensions.dart';

class ReportCardWidget extends ConsumerWidget {
  final ReportModel report;

  const ReportCardWidget({
    super.key,
    required this.report,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final submittedDate = "${report.createdAt.day}/${report.createdAt.month}/${report.createdAt.year}";
    final location = report.address.isNotEmpty 
        ? report.address 
        : "${report.lat.toStringAsFixed(4)}, ${report.lng.toStringAsFixed(4)}";
    final l10n = S.of(context); // Initialize localization

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
                    l10n.reportIdLabel, // Localized
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: Colors.grey.shade500,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    report.id,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              StatusBadgeWidget(currentStatus: report.status.value),
            ],
          ),
          const SizedBox(height: 20),

          InfoRowWidget(
            icon: Icons.calendar_today_outlined,
            label: l10n.submittedOnLabel, // Localized
            value: submittedDate,
          ),
          const SizedBox(height: 16),

          InfoRowWidget(
            icon: Icons.location_on_outlined,
            label: l10n.locationLabel, // Localized
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
                  report.accidentType,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  ref.read(selectedReportProvider.notifier).state = report;
                  ref.read(isPreviewModeProvider.notifier).state = true;
                  Navigator.of(context).pushNamed(AppRoute.reportDetails.route);
                },
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
                        l10n.viewDetails, // Localized
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