class ReportFormModel {
  final String accidentType;
  final String licensePlate;
  final String description;
  final List<String> evidencePhotos; // List of file paths or URLs

  const ReportFormModel({
    required this.accidentType,
    required this.licensePlate,
    required this.description,
    required this.evidencePhotos,
  });

  /// Generates a clean, empty form state. 
  /// The default accident type is set to "Rear-end" to match the UI's initial state.
  factory ReportFormModel.initial() {
    return const ReportFormModel(
      accidentType: 'Rear-end',
      licensePlate: '',
      description: '',
      evidencePhotos: [],
    );
  }

  /// Creates a new instance with updated fields while preserving the rest.
  /// Highly useful for immutable state management.
  ReportFormModel copyWith({
    String? accidentType,
    String? licensePlate,
    String? description,
    List<String>? evidencePhotos,
  }) {
    return ReportFormModel(
      accidentType: accidentType ?? this.accidentType,
      licensePlate: licensePlate ?? this.licensePlate,
      description: description ?? this.description,
      evidencePhotos: evidencePhotos ?? this.evidencePhotos,
    );
  }

  /// Converts the model to a Map for database submission (e.g., Firestore).
  Map<String, dynamic> toMap() {
    return {
      'accidentType': accidentType,
      'licensePlate': licensePlate,
      'description': description,
      'evidencePhotos': evidencePhotos,
      'submittedAt': DateTime.now().toIso8601String(), // Useful for your backend
    };
  }

  /// Rebuilds the model from a database Map.
  factory ReportFormModel.fromMap(Map<String, dynamic> map) {
    return ReportFormModel(
      accidentType: map['accidentType'] as String? ?? 'Other',
      licensePlate: map['licensePlate'] as String? ?? '',
      description: map['description'] as String? ?? '',
      evidencePhotos: List<String>.from(map['evidencePhotos'] ?? []),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReportFormModel &&
      other.accidentType == accidentType &&
      other.licensePlate == licensePlate &&
      other.description == description &&
      // Simple list equality check (for deeper equality, consider the collection package)
      other.evidencePhotos.length == evidencePhotos.length; 
  }

  @override
  int get hashCode {
    return accidentType.hashCode ^
      licensePlate.hashCode ^
      description.hashCode ^
      evidencePhotos.hashCode;
  }
}