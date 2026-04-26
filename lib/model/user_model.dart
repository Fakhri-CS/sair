import 'package:sair_cpa/core/enums/app_enums.dart';
import 'package:sair_cpa/core/extensions/enum_extensions.dart';

class UserModel {
  final String id;
  final String fullName;
  final String email;
  final String phone;
  final String nationalId;
  final UserRole role;
  final DateTime createdAt;

  UserModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.nationalId,
    required this.role,
    required this.createdAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? '',
      fullName: json['fullName'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      nationalId: json['nationalId'] ?? '',
      role: UserRoleX.fromString(json['role']),
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'fullName': fullName,
    'email': email,
    'phone': phone,
    'nationalId': nationalId,
    'role': role.value,
    'createdAt': createdAt.toIso8601String(),
  };
}