import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view/widgets/evidence_preview_screen_widgets/confirm_delete_dialog_widget.dart';
import 'package:sair_cpa/view_model/evidence_photos_provider.dart';
import 'package:sair_cpa/view_model/is_preview_mode_provider.dart';

import 'package:sair_cpa/view_model/selected_report_provider.dart';
import 'package:sair_cpa/core/network/api_endpoints.dart';

class EvidenceGridWidget extends ConsumerWidget {
  const EvidenceGridWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final evidencePhotos = ref.watch(evidencePhotosProvider);
    final isPreviewMode = ref.watch(isPreviewModeProvider);
    final selectedReport = ref.watch(selectedReportProvider);

    final itemCount = isPreviewMode && selectedReport != null
        ? selectedReport.mediaUrls.length
        : evidencePhotos.length;

    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        Widget imageWidget;
        File? localFile;

        if (isPreviewMode && selectedReport != null) {
          final path = selectedReport.mediaUrls[index];
          // Construct full URL if it's a relative path
          final fullUrl = path.startsWith('http') ? path : "$kBaseUrl$path";
          
          imageWidget = Image.network(
            fullUrl,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Icon(
              Icons.broken_image_outlined,
              color: theme.colorScheme.error,
            ),
          );
        } else {
          localFile = evidencePhotos[index];
          imageWidget = Image.file(
            File(localFile.path),
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Icon(
              Icons.broken_image_outlined,
              color: theme.colorScheme.error,
            ),
          );
        }

        return Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                decoration: BoxDecoration(
                  color: theme.dividerTheme.color?.withValues(alpha: 0.2),
                ),
                child: imageWidget,
              ),
            ),
            if (!isPreviewMode && localFile != null)
              Positioned(
                top: 8,
                right: 8,
                child: Material(
                  color: theme.colorScheme.surface.withValues(alpha: 0.9),
                  shape: const CircleBorder(),
                  elevation: 4,
                  child: InkWell(
                    customBorder: const CircleBorder(),
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (context) =>
                            ConfirmDeleteDialogWidget(image: localFile!),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: theme.colorScheme.error,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
