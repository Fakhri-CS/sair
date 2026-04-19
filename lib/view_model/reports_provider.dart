import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/model/report_model.dart';

class ReportsNotifier extends Notifier<List<ReportModel>> {
  @override
  List<ReportModel> build() {
    return [];
  }

  void addReport(ReportModel report) {
    state = [...state, report];
  }
}

final reportsProvider =
    NotifierProvider<ReportsNotifier, List<ReportModel>>(
      ReportsNotifier.new,
    );
