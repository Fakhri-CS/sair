import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/widgets/global_widgets/license_plate_widgets/license_plate_input_widget.dart';
import 'package:sair_cpa/view_model/is_preview_mode_provider.dart';

class LicensePlateCardWidget extends ConsumerStatefulWidget {
  const LicensePlateCardWidget({super.key});

  @override
  ConsumerState<LicensePlateCardWidget> createState() =>
      _LicensePlateCardWidgetState();
}

class _LicensePlateCardWidgetState
    extends ConsumerState<LicensePlateCardWidget> {
  int _numberOfPlates = 1;

  @override
  Widget build(BuildContext context) {
    final isPreviewMode = ref.watch(isPreviewModeProvider);
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.directions_car_outlined,
                  size: 18,
                  color: theme.primaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  l10n.licensePlateTitle, // Localized string
                  style: theme.textTheme.titleMedium?.copyWith(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 16),

            for (int i = 0; i < _numberOfPlates; i++)
              i == 0 || i != _numberOfPlates - 1
                  ? const LicensePlateInputWidget()
                  : Stack(
                      children: [
                        const LicensePlateInputWidget(),
                        Positioned(
                          left: 0,
                          bottom: -12,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _numberOfPlates--;
                              });
                            },
                            icon: const Icon(Icons.remove_circle),
                          ),
                        ),
                      ],
                    ),
            if (!isPreviewMode)
              SizedBox(
                width: double.infinity,
                child: TextButton.icon(
                  onPressed: () {
                    setState(() {
                      _numberOfPlates++;
                    });
                  },
                  icon: const Icon(Icons.add),
                  label: Text(l10n.addPlateButton), // Localized string
                ),
              ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start, // Fixed typo here
              children: [
                Icon(
                  Icons.info_outline,
                  size: 12,
                  color: theme.textTheme.labelSmall?.color,
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    isPreviewMode
                        ? l10n.plateNumbersHint // Localized string
                        : l10n.enterPlateExactlyHint, // Localized string
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.normal,
                      color: theme.textTheme.labelSmall?.color?.withValues(
                        alpha: 0.8,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}