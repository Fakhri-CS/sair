import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view_model/evidence_photos_provider.dart';

class ConfirmDeleteDialogWidget extends ConsumerWidget {
  const ConfirmDeleteDialogWidget({super.key, required this.image});
  
  final File image;
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization

    return AlertDialog(
      backgroundColor: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Text(l10n.removePhotoTitle, style: theme.textTheme.titleMedium), // Localized
      content: Text(
        l10n.removePhotoContent, // Localized
        style: theme.textTheme.bodyMedium,
      ),
      actions: [
        Row(
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              style: TextButton.styleFrom(
                foregroundColor: theme.textTheme.bodyMedium?.color,
              ),
              child: Text(l10n.cancelButton), // Localized
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  ref
                      .read(evidencePhotosProvider.notifier)
                      .deleteEvidencePhoto(image);
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.error,
                  foregroundColor: theme.colorScheme.surface,
                ),
                child: Text(l10n.deleteButton), // Localized
              ),
            ),
          ],
        ),
      ],
    );
  }
}