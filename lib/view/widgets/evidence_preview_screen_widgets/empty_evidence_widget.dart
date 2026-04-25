import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import

class EmptyEvidenceWidget extends StatelessWidget {
  const EmptyEvidenceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.no_photography_outlined,
            size: 64,
            color: theme.dividerTheme.color,
          ),
          const SizedBox(height: 16),
          Text(
            l10n.noEvidenceCaptured, // Localized string
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}