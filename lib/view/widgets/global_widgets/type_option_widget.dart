import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view_model/accident_type_provider.dart';
import 'package:sair_cpa/view_model/is_preview_mode_provider.dart';
import 'package:sair_cpa/view_model/selected_report_provider.dart';

class TypeOptionWidget extends ConsumerWidget {
  const TypeOptionWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isPreviewMode = ref.watch(isPreviewModeProvider);
    final selectedReport = ref.watch(selectedReportProvider);
    
    final currentAccidentType = isPreviewMode && selectedReport != null
        ? selectedReport.accidentType
        : ref.watch(accidentTypeProvider);

    bool isSelected = currentAccidentType == title;
    return Expanded(
      child: InkWell(
        onTap: isPreviewMode
            ? null
            : () {
                ref.read(accidentTypeProvider.notifier).update(title);
              },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: isSelected
                ? theme.primaryColor.withValues(alpha: 0.04)
                : theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected
                  ? theme.primaryColor
                  : (theme.dividerTheme.color ?? Colors.grey.shade200),
              width: isSelected ? 1.5 : 1.0,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            title,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              color: isSelected
                  ? theme.primaryColor
                  : theme.colorScheme.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}
