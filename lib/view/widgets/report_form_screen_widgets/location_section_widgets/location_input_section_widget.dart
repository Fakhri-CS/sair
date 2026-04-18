import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/location_section_widgets/location_text_buttion_widget.dart';

class LocationInputSectionWidget extends StatelessWidget {
  const LocationInputSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 160,
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: theme.dividerTheme.color ?? Colors.grey.shade300,
            ),
            boxShadow: [
              BoxShadow(
                color: theme.shadowColor.withValues(alpha: 0.02),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: Text(
              "No location chosen",
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.textTheme.bodyMedium?.color?.withValues(
                  alpha: 0.7,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Action Buttons Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: LocationTextButtionWidget(
                text: "Get Current Location",
                onTap: () {},
              ),
            ),

            // Divider between buttons
            Container(
              height: 24,
              width: 1,
              color: theme.dividerTheme.color ?? Colors.grey.shade300,
            ),
            Expanded(child: LocationTextButtionWidget(text: "Select on Map", onTap: () {})),
          ],
        ),
      ],
    );
  }
}
