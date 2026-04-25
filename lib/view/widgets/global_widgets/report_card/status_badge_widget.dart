import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/app_theme.dart';

class StatusBadgeWidget extends StatelessWidget {
  const StatusBadgeWidget({super.key, required this.currentStatus});

  final String currentStatus;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization

    Color baseColor;
    String localizedText;

    // Map the raw status string to a Color AND a Localized String
    switch (currentStatus.toLowerCase()) {
      case 'approved':
        baseColor = AppTheme.statusApproved;
        localizedText = l10n.statusApproved;
        break;
      case 'pending':
        baseColor = AppTheme.statusPending;
        localizedText = l10n.statusPending;
        break;
      case 'rejected':
        baseColor = theme.colorScheme.error;
        localizedText = l10n.statusRejected;
        break;
      case 'under review':
      case 'under_review': // Good practice to handle snake_case for backend data
        baseColor = theme.primaryColor;
        localizedText = l10n.statusUnderReview;
        break;
      default:
        baseColor = Colors.grey.shade600;
        localizedText = currentStatus; // Fallback to raw string if unknown
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: baseColor.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        localizedText, // Use the localized string here
        style: theme.textTheme.labelSmall?.copyWith(
          color: baseColor,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}