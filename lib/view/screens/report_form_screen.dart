import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/widgets/global_widgets/sair_app_bar.dart';
import 'package:sair_cpa/view/widgets/global_widgets/accident_type_card_widget.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/bottom_action_widget.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/camera_input_section_widget.dart';
import 'package:sair_cpa/view/widgets/global_widgets/description_card_widget.dart';
import 'package:sair_cpa/view/widgets/global_widgets/evidence_card_widget.dart';
import 'package:sair_cpa/view/widgets/global_widgets/license_plate_widgets/license_plate_card_widget.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/location_input_section_widget.dart';
import 'package:sair_cpa/view/widgets/report_form_screen_widgets/report_form_header_widget.dart';

class ReportFormScreen extends StatelessWidget {
  const ReportFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: SairAppBar(
        title: l10n.accidentReportTitle, // Localized string
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ReportFormHeaderWidget(),
              const SizedBox(height: 24),
              const LocationInputSectionWidget(),
              const SizedBox(height: 24),
              const AccidentTypeCardWidget(),
              const SizedBox(height: 16),
              const LicensePlateCardWidget(),
              const SizedBox(height: 16),
              const DescriptionCardWidget(),
              const SizedBox(height: 16),
              const CameraInputSectionWidget(),
              const SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.info_outline, size: 18, color: theme.primaryColor),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "Right now you can't submit multiple photos.",
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.primaryColor.withValues(alpha: 0.8),
                        height: 1.4,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const EvidenceCardWidget(),
              const SizedBox(height: 32),
              const BottomActionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
