import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/routes.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/location_text_buttion_widget.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/location_text_status_widget.dart';
import 'package:sair_cpa/view_model/location_provider.dart';

class LocationInputSectionWidget extends ConsumerWidget {
  const LocationInputSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization
    final location = ref.watch(locationProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 160,
          clipBehavior: Clip.hardEdge, // Fixed typo here
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
          child: location.value == null
              ? LocationTextStatusWidget(text: l10n.locationNotChosen)
              : location.when(
                  data: (data) {
                    return Image.network(
                      data!.locationImage!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    );
                  },
                  error: (error, stackTrace) {
                    return LocationTextStatusWidget(
                      text: l10n.somethingWentWrong,
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                ),
        ),
        const SizedBox(height: 16),

        // Action Buttons Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: LocationTextButtionWidget(
                text: l10n.getCurrentLocation,
                onTap: () async {
                  await ref
                      .read(locationProvider.notifier)
                      .getCurrentLocation();
                },
              ),
            ),

            // Divider between buttons
            Container(
              height: 24,
              width: 1,
              color: theme.dividerTheme.color ?? Colors.grey.shade300,
            ),
            Expanded(
              child: LocationTextButtionWidget(
                text: l10n.selectOnMap,
                onTap: () => Navigator.pushNamed(
                    context, AppRoute.accidentLocationOnMap.route),
              ),
            ),
          ],
        ),
      ],
    );
  }
}