import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view_model/evidence_photos_provider.dart';

class ConfirmDeleteDialogWidget extends ConsumerWidget {
  const ConfirmDeleteDialogWidget({super.key, required this.image});
  final File image;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return AlertDialog(
      backgroundColor: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Text("Remove Photo?", style: theme.textTheme.titleMedium),
      content: Text(
        "Are you sure you want to delete this evidence?",
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
              child: const Text("Cancel"),
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
                child: const Text("Delete"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
