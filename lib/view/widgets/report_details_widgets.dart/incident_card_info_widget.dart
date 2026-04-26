import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view_model/selected_report_provider.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/widgets/report_details_widgets.dart/card_info_item_widget.dart';

class IncidentInfoCardWidget extends ConsumerWidget {
  const IncidentInfoCardWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final report = ref.watch(selectedReportProvider);

    if (report == null) return const SizedBox.shrink();

    final dateStr = "${report.occurredAt.day}/${report.occurredAt.month}/${report.occurredAt.year}";
    final timeStr = "${report.occurredAt.hour}:${report.occurredAt.minute.toString().padLeft(2, '0')}";
    final locationStr = report.address.isNotEmpty 
        ? report.address 
        : "${report.lat.toStringAsFixed(4)}, ${report.lng.toStringAsFixed(4)}";

    final l10n = S.of(context); // Initialize localization
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
          Row(
            children: [
              Icon(
                Icons.description_outlined,
                color: theme.primaryColor,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                l10n.incidentInfoTitle,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          Row(
            children: [
              Expanded(
                child: CardInfoItemWidget(
                  icon: Icons.calendar_today_outlined,
                  label: l10n.dateLabel,
                  value: dateStr,

                ),
              ),
              Expanded(
                child: CardInfoItemWidget(
                  icon: Icons.access_time_outlined,
                  label: l10n.timeLabel,
                  value: timeStr,

                ),
              ),
            ],
          ),

          const SizedBox(height: 16),
          Divider(
            color:
                theme.dividerTheme.color ??
                theme.dividerColor.withValues(alpha: 0.5),
            height: 32,
          ),
          CardInfoItemWidget(
            icon: Icons.location_on_outlined,
            label: l10n.locationLabelCap,
            value: locationStr,
          ),
        ],
      ),
    );
  }
}
