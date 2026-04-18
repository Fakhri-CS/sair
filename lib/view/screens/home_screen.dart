import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/global_widgets/report_card/report_card_widget.dart';
import 'package:sair_cpa/view/widgets/home_screen_widgets/dashboard_title_widget.dart';
import 'package:sair_cpa/view/widgets/home_screen_widgets/incident_cta_widget.dart';
import 'package:sair_cpa/view/widgets/home_screen_widgets/safety_banner_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DashboardTitleWidget(),
          const SizedBox(height: 40),

          const IncidentCtaWidget(),
          const SizedBox(height: 24),

          Text(
            "Recent Activity",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),

          ReportCardWidget(
            reportId: "SR-99281",
            status: "approved",
            submittedDate: "24 Oct 2023",
            location: "Al-Olaya, Riyadh",
            category: "Road Maintenance",
            onViewDetails: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Opening details for SR-99281")),
              );
            },
          ),
          const SizedBox(height: 24),

          const SafetyBannerWidget(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
