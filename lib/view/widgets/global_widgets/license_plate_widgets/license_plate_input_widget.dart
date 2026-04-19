import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view_model/is_preview_mode_provider.dart';

class LicensePlateInputWidget extends ConsumerWidget {
  const LicensePlateInputWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isPreviewMode = ref.watch(isPreviewModeProvider);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        enabled: !isPreviewMode,
        textAlign: TextAlign.center,
        style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          hintText: "ABC 1234",
          suffixIcon: Icon(
            Icons.check_circle_outline,
            color: theme.dividerTheme.color?.withValues(alpha: 0.8),
            size: 20,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
        ),
      ),
    );
  }
}
