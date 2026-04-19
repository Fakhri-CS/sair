import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/report_details_widgets.dart/card_info_item_widget.dart';

class IncidentInfoCardWidget extends StatelessWidget {
  const IncidentInfoCardWidget({super.key});

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
          Row(
            children: [
              Icon(
                Icons.description_outlined,
                color: theme.primaryColor,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                "Incident Information",
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          const Row(
            children: [
              Expanded(
                child: CardInfoItemWidget(
                  icon: Icons.calendar_today_outlined,
                  label: "DATE",
                  value: "Oct 24, 2023",
                ),
              ),
              Expanded(
                child: CardInfoItemWidget(
                  icon: Icons.access_time_outlined,
                  label: "TIME",
                  value: "10:45 AM",
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
          const CardInfoItemWidget(
            icon: Icons.location_on_outlined,
            label: "LOCATION",
            value: "Sheikh Zayed Road, Near Exit 25",
          ),
        ],
      ),
    );
  }
}
