import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/widgets/global_widgets/type_option_widget.dart';

class AccidentTypeCardWidget extends StatefulWidget {
  const AccidentTypeCardWidget({super.key});

  @override
  State<AccidentTypeCardWidget> createState() => _AccidentTypeCardWidgetState();
}

class _AccidentTypeCardWidgetState extends State<AccidentTypeCardWidget> {
  @override
  Widget build(BuildContext context) {
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
                Icon(Icons.info_outline, size: 18, color: theme.colorScheme.secondary),
                const SizedBox(width: 8),
                Text(
                  l10n.accidentTypeTitle, // Localized string
                  style: theme.textTheme.titleMedium?.copyWith(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row( // Removed const here
              children: [
                TypeOptionWidget(title: l10n.accidentTypeRearEnd), // Localized string
                const SizedBox(width: 12), // Kept const here
                TypeOptionWidget(title: l10n.accidentTypeFrontal), // Localized string
              ],
            ),
            const SizedBox(height: 12),
            Row( // Removed const here
              children: [
                TypeOptionWidget(title: l10n.accidentTypeSideSwipe), // Localized string
                const SizedBox(width: 12), // Kept const here
                TypeOptionWidget(title: l10n.accidentTypeOther), // Localized string
              ],
            ),
          ],
        ),
      ),
    );
  }
}