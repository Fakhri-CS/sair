import '../enums/app_enums.dart';

extension UserRoleX on UserRole {
  String get value => toString().split('.').last;

  static UserRole fromString(String value) {
    return UserRole.values.firstWhere(
          (e) => e.value == value,
      orElse: () => UserRole.citizen,
    );
  }
}

extension ReportStatusX on ReportStatus {
  String get value {
    switch (this) {
      case ReportStatus.underReview:
        return 'under_review';
      case ReportStatus.inProgress:
        return 'in_progress';
      default:
        return toString().split('.').last;
    }
  }

  static ReportStatus fromString(String value) {
    switch (value) {
      case 'under_review':
        return ReportStatus.underReview;
      case 'in_progress':
        return ReportStatus.inProgress;
      default:
        return ReportStatus.values.firstWhere(
              (e) => e.value == value,
          orElse: () => ReportStatus.submitted,
        );
    }
  }
}

extension LocationSourceX on LocationSource {
  String get value => toString().split('.').last;

  static LocationSource fromString(String value) {
    return LocationSource.values.firstWhere(
          (e) => e.value == value,
      orElse: () => LocationSource.manual,
    );
  }
}