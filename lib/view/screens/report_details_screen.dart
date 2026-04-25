import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/widgets/global_widgets/description_card_widget.dart';
import 'package:sair_cpa/view/widgets/global_widgets/sair_app_bar.dart';
import 'package:sair_cpa/view/widgets/report_details_widgets.dart/incident_card_info_widget.dart';
import 'package:sair_cpa/view/widgets/report_details_widgets.dart/location_preview_card_widget.dart';
import 'package:sair_cpa/view/widgets/report_details_widgets.dart/report_progress_card_widget.dart';
import 'package:sair_cpa/view/widgets/report_details_widgets.dart/report_status_card_widget.dart';
import 'package:sair_cpa/view/widgets/global_widgets/accident_type_card_widget.dart';
import 'package:sair_cpa/view/widgets/global_widgets/evidence_card_widget.dart';
import 'package:sair_cpa/view/widgets/global_widgets/license_plate_widgets/license_plate_card_widget.dart';

class ReportDetailsScreen extends StatelessWidget {
  const ReportDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: SairAppBar(
        title: l10n.reportDetailsTitle, // Localized string
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReportStatusCardWidget(),
              SizedBox(height: 24),
              IncidentInfoCardWidget(),
              SizedBox(height: 24),
              LocationPreviewCardWidget(
                latitude: 'd',
                longitude: 'd',
                mapImageUrl: 'd',
              ),
              SizedBox(height: 24),
              AccidentTypeCardWidget(),
              SizedBox(height: 24),
              LicensePlateCardWidget(),
              SizedBox(height: 24),
              DescriptionCardWidget(),
              SizedBox(height: 24),
              SizedBox(height: 16),
              EvidenceCardWidget(),
              SizedBox(height: 16),
              ReportProgressCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}