import 'package:flutter/material.dart';
import 'package:sair_cpa/view/app_theme.dart';

class StatusBadgeWidget extends StatelessWidget {
  const StatusBadgeWidget({super.key, required this.currentStatus});

  final String currentStatus;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Color baseColor;

    switch (currentStatus.toLowerCase()) {
      case 'approved':
        baseColor = AppTheme.statusApproved;
        break;
      case 'pending':
        baseColor = AppTheme.statusPending;
        break;
      case 'rejected':
        baseColor = theme.colorScheme.error;
        break;
      case 'under review':
        baseColor = theme.primaryColor;
        break;
      default:
        baseColor = Colors.grey.shade600;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: baseColor.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        currentStatus,
        style: theme.textTheme.labelSmall?.copyWith(
          color: baseColor,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
