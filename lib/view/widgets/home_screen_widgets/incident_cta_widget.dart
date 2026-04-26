import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/app_theme.dart';
import 'package:sair_cpa/view/routes.dart';
import 'package:sair_cpa/view_model/is_preview_mode_provider.dart';

class IncidentCtaWidget extends ConsumerWidget {
  const IncidentCtaWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization

    return Column(
      children: [
        Text(l10n.incidentQuestion, style: theme.textTheme.titleLarge), // Localized
        const SizedBox(height: 6),
        Text(
          l10n.incidentSubtitle, // Localized
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(height: 20),

        InkWell(
          onTap: () {
            ref.read(isPreviewModeProvider.notifier).state = false;
            Navigator.pushNamed(context, AppRoute.reportForm.route);
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 32),
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: theme.primaryColor.withValues(alpha: 0.3),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.15),
                    shape: BoxShape.circle,
                    border: Border.all(color: AppTheme.borderLight),
                  ),
                  child: Icon(
                    Icons.warning,
                    color: theme.colorScheme.onPrimary,
                    size: 32,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  l10n.reportMinorAccidentBtn, // Localized
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.pressToReportHint, // Localized
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.onPrimary.withValues(alpha: 0.8),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}