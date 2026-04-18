import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/model/report_form_model.dart';

class ReportFormNotifier extends Notifier<ReportFormModel> {
  @override
  ReportFormModel build() {
    return ReportFormModel.initial();
  }

  void updateAccidentType(String type) {
    state = state.copyWith(accidentType: type);
  }

  void updateLicensePlate(String plate) {
    state = state.copyWith(licensePlate: plate);
  }

  void updateDescription(String description) {
    state = state.copyWith(description: description);
  }

  void addEvidencePhoto(String photoPath) {
    state = state.copyWith(
      evidencePhotos: [...state.evidencePhotos, photoPath], 
    );
  }

  void removeEvidencePhoto(String photoPath) {
    state = state.copyWith(
      evidencePhotos: state.evidencePhotos.where((p) => p != photoPath).toList(),
    );
  }

  Future<void> submitReport() async {
    // 1. Basic Validation Example
    if (state.licensePlate.trim().isEmpty) {
      throw Exception("License plate cannot be empty");
    }

    // 2. Prepare data for submission
    final submissionData = state.toMap();

    try {
      // 3. TODO: Inject your repository and call the API/Firestore here
      // await reportRepository.submitAccidentReport(submissionData);
      
      print("Report submitted successfully: $submissionData");

      // Optional: Reset form after successful submission
      // state = ReportFormModel.initial(); 
    } catch (e) {
      // Handle errors (e.g., set an error state or throw to the UI)
      print("Failed to submit report: $e");
      rethrow; 
    }
  }
}

final reportFormProvider = NotifierProvider.autoDispose<ReportFormNotifier, ReportFormModel>(() {
  return ReportFormNotifier();
});