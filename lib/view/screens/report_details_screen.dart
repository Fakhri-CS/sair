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

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view_model/selected_report_provider.dart';

class ReportDetailsScreen extends ConsumerWidget {
  const ReportDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final report = ref.watch(selectedReportProvider);

    if (report == null) {
      return Scaffold(
        appBar: SairAppBar(title: "Report Details"),
        body: const Center(child: Text("No report selected")),
      );
    }
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ReportStatusCardWidget(),
              const SizedBox(height: 24),
              const IncidentInfoCardWidget(),
              const SizedBox(height: 24),
              LocationPreviewCardWidget(
                latitude: report.lat.toString(),
                longitude: report.lng.toString(),
                mapImageUrl: '', // Can be generated later
              ),
              const SizedBox(height: 24),
              const AccidentTypeCardWidget(),
              const SizedBox(height: 24),
              const LicensePlateCardWidget(),
              const SizedBox(height: 24),
              const DescriptionCardWidget(),
              const SizedBox(height: 24),
              const SizedBox(height: 16),
              const EvidenceCardWidget(),
              const SizedBox(height: 16),
              const ReportProgressCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}