import 'package:sair_cpa/core/enums/app_enums.dart';
import 'package:sair_cpa/core/extensions/enum_extensions.dart';

class MeResponse {
  final String uid;
  final UserRole role;
  final String email;
  final String token;

  MeResponse({
    required this.uid,
    required this.role,
    required this.email,
    required this.token,
  });

  factory MeResponse.fromJson(Map<String, dynamic> json) {
    return MeResponse(
      uid: json['uid'] ?? '',
      role: UserRoleX.fromString(json['role']),
      email: json['email'] ?? '',
      token: json['token'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
    'uid': uid,
    'role': role.value,
    'email': email,
    'token': token,
  };
}