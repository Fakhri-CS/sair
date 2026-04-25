
class RegisterRequestModel {
  final String fullName;
  final String email;
  final String phone;
  final String nationalId;
  final String password;

  RegisterRequestModel({
    required this.fullName,
    required this.email,
    required this.phone,
    required this.nationalId,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        "fullName": fullName,
        "email": email,
        "phone": phone,
        "nationalId": nationalId,
        "password": password,
      };
}


// class AuthRepository {
//   Future<void> registerCitizen(RegisterRequestModel request) async {
//     // Simulate API call
//     await Future.delayed(const Duration(seconds: 2));
    
//     // Simulate a random network error for demonstration
//     // if (request.email.isEmpty) throw Exception("Network error");
    
//     print("API called with: ${request.toJson()}");
//     return; // Success
//   }
// }