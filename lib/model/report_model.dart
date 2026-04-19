

import 'dart:io';

import 'package:sair_cpa/model/place_location_model.dart';
import 'package:uuid/uuid.dart';
const uuid = Uuid();
class ReportModel {
  final String reportId, accidentType, description;
  final List<String>licensePlates;
  final PlaceLocationModel? placeLocation;
  final List<File> evidencePhotos;
   ReportModel({
    this.placeLocation,
    required this.accidentType,
    required this.licensePlates,
    required this.description,
    required this.evidencePhotos,
  }) : reportId = uuid.v4();

  /// Generates a clean, empty form state.
  /// The default accident type is set to "Rear-end" to match the UI's initial state.
  factory ReportModel.initial() {
    return ReportModel(
      placeLocation: null,
      accidentType: 'Rear-end',
      licensePlates: [],
      description: '',
      evidencePhotos: [],
    );
  }

  /// Creates a new instance with updated fields while preserving the rest.
  /// Highly useful for immutable state management.
  ReportModel copyWith({
    PlaceLocationModel? placeLocation,
    String? accidentType,
    List<String>? licensePlates,
    String? description,
    List<File>? evidencePhotos,
  }) {
    return ReportModel(
      placeLocation: placeLocation ?? this.placeLocation,
      accidentType: accidentType ?? this.accidentType,
      licensePlates: licensePlates ?? this.licensePlates,
      description: description ?? this.description,
      evidencePhotos: evidencePhotos ?? this.evidencePhotos,
    );
  }

  /// Converts the model to a Map for database submission (e.g., Firestore).
  // Map<String, dynamic> toMap() {
  //   return {
  //     'accidentType': accidentType,
  //     'licensePlate': licensePlate,
  //     'description': description,
  //     'evidencePhotos': evidencePhotos,
  //     'submittedAt': DateTime.now()
  //         .toIso8601String(), // Useful for your backend
  //   };
  // }

  /// Rebuilds the model from a database Map.
  // factory ReportModel.fromMap(Map<String, dynamic> map) {
  //   return ReportModel(
  //     accidentType: map['accidentType'] as String? ?? 'Other',
  //     licensePlate: map['licensePlate'] as String? ?? '',
  //     description: map['description'] as String? ?? '',
  //     evidencePhotos: List<String>.from(map['evidencePhotos'] ?? []),
  //   );
  // }

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;
  //   return other is ReportModel &&
  //       other.accidentType == accidentType &&
  //       other.licensePlate == licensePlate &&
  //       other.description == description &&
  //       // Simple list equality check (for deeper equality, consider the collection package)
  //       other.evidencePhotos.length == evidencePhotos.length;
  // }

  // @override
  // int get hashCode {
  //   return accidentType.hashCode ^
  //       licensePlate.hashCode ^
  //       description.hashCode ^
  //       evidencePhotos.hashCode;
  // }
}
