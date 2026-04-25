import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/widgets/global_widgets/report_card/report_card_widget.dart';
import 'package:sair_cpa/view/widgets/home_screen_widgets/dashboard_title_widget.dart';
import 'package:sair_cpa/view/widgets/home_screen_widgets/incident_cta_widget.dart';
import 'package:sair_cpa/view/widgets/home_screen_widgets/safety_banner_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context); // Initialize localization

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DashboardTitleWidget(),
          const SizedBox(height: 40),

          const IncidentCtaWidget(),
          const SizedBox(height: 24),

          Text(
            l10n.recentActivityTitle, // Localized string
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),

          // Note: Mock data localized for prototyping. 
          // Replace with real data from your Riverpod state later.
          ReportCardWidget(
            reportId: l10n.mockReportId,
            status: l10n.mockStatusApproved,
            submittedDate: l10n.mockDate,
            location: l10n.mockLocation,
            category: l10n.mockCategory,
          ),
          const SizedBox(height: 24),

          const SafetyBannerWidget(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}