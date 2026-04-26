import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/widgets/global_widgets/report_card/report_card_widget.dart';
import 'package:sair_cpa/view/widgets/home_screen_widgets/dashboard_title_widget.dart';
import 'package:sair_cpa/view_model/reports_provider.dart';
import 'package:sair_cpa/view/widgets/home_screen_widgets/incident_cta_widget.dart';
import 'package:sair_cpa/view/widgets/home_screen_widgets/safety_banner_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportsState = ref.watch(reportsProvider);
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

          reportsState.when(
            data: (reports) {
              if (reports.isEmpty) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text("No recent activity found."),
                  ),
                );
              }
              // Show only the most recent report on Home
              return ReportCardWidget(report: reports.first);
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, _) => Text("Could not load recent activity: $error"),
          ),
          const SizedBox(height: 24),

          const SafetyBannerWidget(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}