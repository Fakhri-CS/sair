import 'package:flutter/material.dart';

class EmptyEvidenceWidget extends StatelessWidget {
  const EmptyEvidenceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
            "No evidence captured yet.",
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}
