import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view_model/is_preview_mode_provider.dart';

class LicensePlateInputWidget extends ConsumerStatefulWidget {
  const LicensePlateInputWidget({
    super.key,
    required this.initialValue,
    required this.onChanged,
  });

  final String initialValue;
  final ValueChanged<String> onChanged;

  @override
  ConsumerState<LicensePlateInputWidget> createState() => _LicensePlateInputWidgetState();
}

class _LicensePlateInputWidgetState extends ConsumerState<LicensePlateInputWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
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
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: TextField(
        controller: _controller,
        enabled: !isPreviewMode,
        textAlign: TextAlign.center,
        onChanged: widget.onChanged,
        style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          hintText: "ABC 1234",
          suffixIcon: Icon(
            Icons.check_circle_outline,
            color: theme.primaryColor.withValues(alpha: 0.6),
            size: 20,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 16,
          ),
        ),
      ),
    );
  }
}
