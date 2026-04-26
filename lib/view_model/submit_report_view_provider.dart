import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/model/report_model.dart';
import 'package:sair_cpa/service/report_service.dart';
import 'package:sair_cpa/view_model/location_provider.dart';
import 'package:sair_cpa/view_model/description_provider.dart';
import 'package:sair_cpa/view_model/accident_type_provider.dart';
import 'package:sair_cpa/view_model/evidence_photos_provider.dart';
import 'package:sair_cpa/view_model/reports_provider.dart';
import 'package:sair_cpa/view_model/license_plates_provider.dart';

class SubmitReportViewModel extends AsyncNotifier<ReportModel?> {
  @override
  FutureOr<ReportModel?> build() {
    return null;
  }

  Future<void> submitReport() async {
    final location = ref.read(locationProvider).value;
    final description = ref.read(descriptionProvider);
    final accidentType = ref.read(accidentTypeProvider);
    final evidencePhotos = ref.read(evidencePhotosProvider);
    final platesNumber = ref.read(licensePlatesProvider);

    if (location == null) {
      state = AsyncValue.error('Please select a location', StackTrace.current);
      return;
    }

    if (description.trim().isEmpty) {
      state = AsyncValue.error('Please enter a description', StackTrace.current);
      return;
    }

    // Filter out empty plate numbers
    final validPlates = platesNumber.where((p) => p.trim().isNotEmpty).toList();

    if (validPlates.isEmpty) {
      state = AsyncValue.error('Please add at least one valid license plate', StackTrace.current);
      return;
    }

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final reportService = ref.read(reportServiceProvider);

      // Create the report with photos (Multipart)
      final report = await reportService.createReport(
        lat: location.latitude,
        lng: location.longitude,
        description: description,
        accidentType: accidentType,
        platesNumber: validPlates,
        photos: evidencePhotos,
      );

      // Clear the form data upon successful submission
      ref.read(descriptionProvider.notifier).clear();
      ref.read(licensePlatesProvider.notifier).clear();

      // Refresh reports list
      ref.read(reportsProvider.notifier).refresh();

      return report;
    });
  }
}

final submitReportViewModelProvider = AsyncNotifierProvider<SubmitReportViewModel, ReportModel?>(
  SubmitReportViewModel.new,
);
