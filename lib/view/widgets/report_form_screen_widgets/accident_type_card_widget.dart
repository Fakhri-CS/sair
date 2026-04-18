import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/type_option_widget.dart';

class AccidentTypeCardWidget extends StatefulWidget {
  const AccidentTypeCardWidget({super.key});

  @override
  State<AccidentTypeCardWidget> createState() => _AccidentTypeCardWidgetState();
}

class _AccidentTypeCardWidgetState extends State<AccidentTypeCardWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
                  "Accident Type",
                  style: theme.textTheme.titleMedium?.copyWith(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                TypeOptionWidget(title: "Rear-end"),
                 SizedBox(width: 12),
                TypeOptionWidget(title: "Frontal"),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              children:  [
                TypeOptionWidget(title: "Side Swipe"),
                 SizedBox(width: 12),
                TypeOptionWidget(title: "Other"),
              ],
            ),
          ],
        ),
      ),
    );

  }
}
