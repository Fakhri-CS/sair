import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart';
import 'package:sair_cpa/view/widgets/global_widgets/report_card/report_card_widget.dart';
import 'package:sair_cpa/view/widgets/reports_screen_widgets/header_section_widget.dart';
import 'package:sair_cpa/view/widgets/reports_screen_widgets/need_help_card_widget.dart';
import 'package:sair_cpa/view_model/reports_provider.dart';

class ReportsScreen extends ConsumerWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportsState = ref.watch(reportsProvider);
    final l10n = S.of(context);

    return reportsState.when(
      data: (reports) => RefreshIndicator(
        onRefresh: () => ref.read(reportsProvider.notifier).refresh(),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            const SizedBox(height: 20),
            HeaderSectionWidget(reportCount: reports.length),
            const SizedBox(height: 24),
            if (reports.isEmpty)
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  child: Text(l10n.noReportsFound),
                ),
              )
            else
              ...reports.map((report) => ReportCardWidget(report: report)),
            const SizedBox(height: 8),
            const NeedHelpCardWidget(),
            const SizedBox(height: 32),
          ],
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              l10n.errorMessage(error.toString()),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ref.read(reportsProvider.notifier).refresh(),
              child: Text(l10n.retryBtn),
            ),
          ],
        ),
      ),
    );
  }
}
