import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/routes.dart';
import 'package:sair_cpa/view_model/evidence_photos_provider.dart';

import 'package:sair_cpa/view_model/is_preview_mode_provider.dart';
import 'package:sair_cpa/view_model/selected_report_provider.dart';

class EvidenceCardWidget extends ConsumerWidget {
  const EvidenceCardWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization
    final evidencePhotos = ref.watch(evidencePhotosProvider);
    final isPreviewMode = ref.watch(isPreviewModeProvider);
    final selectedReport = ref.watch(selectedReportProvider);

    final photoCount = isPreviewMode && selectedReport != null
        ? selectedReport.mediaUrls.length
        : evidencePhotos.length;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(Icons.car_crash, size: 48, color: theme.primaryColor),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.evidenceCapturedTitle, // Localized
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    l10n.photosCountLabel(photoCount),
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoute.evidencePreview.route);
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(l10n.previewButton), // Localized
            ),
          ],
        ),
      ),
    );
  }
}