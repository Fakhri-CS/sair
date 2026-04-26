import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/model/report_model.dart';
import 'package:sair_cpa/service/report_service.dart';

class ReportsNotifier extends AsyncNotifier<List<ReportModel>> {
  @override
  FutureOr<List<ReportModel>> build() async {
    return _fetchReports();
  }

  Future<List<ReportModel>> _fetchReports({String? status}) async {
    final reportService = ref.read(reportServiceProvider);
    return await reportService.getMyReports(status: status);
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetchReports());
  }

  void addReport(ReportModel report) {
    if (state.hasValue) {
      state = AsyncValue.data([report, ...state.value!]);
    }
  }
}

final reportsProvider =
    AsyncNotifierProvider<ReportsNotifier, List<ReportModel>>(
      ReportsNotifier.new,
    );
