import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/global_widgets/report_card/report_card_widget.dart';
import 'package:sair_cpa/view/widgets/reports_screen_widgets/header_section_widget.dart';
import 'package:sair_cpa/view/widgets/reports_screen_widgets/need_help_card_widget.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> activeReports = [
      {
        "id": "SR-99281",
        "status": "Approved",
        "date": "24 Oct 2023",
        "location": "Al-Olaya, Riyadh",
        "category": "Road Maintenance",
      },
      {
        "id": "SR-98102",
        "status": "Pending",
        "date": "12 Nov 2023",
        "location": "King Fahd District, Jeddah",
        "category": "Waste Management",
      },
      {
        "id": "SR-97554",
        "status": "Rejected",
        "date": "05 Dec 2023",
        "location": "Al-Hamra, Dammam",
        "category": "Street Lighting",
      },
      {
        "id": "SR-96221",
        "status": "Under Review",
        "date": "18 Dec 2023",
        "location": "Diplomatic Quarter, Riyadh",
        "category": "Public Safety",
      },
    ];
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      children: [
        HeaderSectionWidget(reportCount: activeReports.length),
        const SizedBox(height: 24),

        // Render the list of Report Cards
        ...activeReports.map(
          (report) => Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: ReportCardWidget(
              reportId: report["id"]!,
              status: report["status"]!,
              submittedDate: report["date"]!,
              location: report["location"]!,
              category: report["category"]!,
              onViewDetails: () {},
            ),
          ),
        ),

        const SizedBox(height: 8),
        const NeedHelpCardWidget(),
        const SizedBox(height: 32),
      ],
    );
  }
}
