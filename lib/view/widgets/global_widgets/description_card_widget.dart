import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view_model/is_preview_mode_provider.dart';

class DescriptionCardWidget extends ConsumerWidget {
  const DescriptionCardWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization
    final isPreviewMode = ref.watch(isPreviewModeProvider);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.description_outlined,
                  size: 18,
                  color: theme.primaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  l10n.descriptionTitle, // Localized
                  style: theme.textTheme.titleMedium?.copyWith(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 16),

            TextField(
              enabled: !isPreviewMode,
              maxLines: 4,
              decoration: InputDecoration( // Removed const
                hintText: l10n.descriptionHint, // Localized
                alignLabelWithHint: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}