import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view_model/description_provider.dart';
import 'package:sair_cpa/view_model/is_preview_mode_provider.dart';

import 'package:sair_cpa/view_model/selected_report_provider.dart';

class DescriptionCardWidget extends ConsumerStatefulWidget {
  const DescriptionCardWidget({super.key});

  @override
  ConsumerState<DescriptionCardWidget> createState() => _DescriptionCardWidgetState();
}

class _DescriptionCardWidgetState extends ConsumerState<DescriptionCardWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize controller with the current value in the provider
    _controller = TextEditingController(text: ref.read(descriptionProvider));
  }

  @override
  void didUpdateWidget(DescriptionCardWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    final isPreviewMode = ref.read(isPreviewModeProvider);
    if (isPreviewMode) {
      final report = ref.read(selectedReportProvider);
      if (report != null) {
        _controller.text = report.description;
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isPreviewMode = ref.watch(isPreviewModeProvider);
    final report = ref.watch(selectedReportProvider);

    if (isPreviewMode && report != null) {
      _controller.text = report.description;
    }

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
                  "Description",
                  style: theme.textTheme.titleMedium?.copyWith(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _controller,
              enabled: !isPreviewMode,
              maxLines: 4,
              onChanged: (value) {
                // Update the provider immediately when text changes
                ref.read(descriptionProvider.notifier).state = value;
              },
              decoration: const InputDecoration(
                hintText: "Add any additional details here...",
                alignLabelWithHint: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
