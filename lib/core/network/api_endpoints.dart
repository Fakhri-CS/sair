// Global API Configuration Variables

// FOR PHYSICAL DEVICE: Replace with your computer's local IP address (e.g., http://192.168.1.100:8080)
// Make sure both your phone and computer are on the same WiFi network.
const String kBaseUrl = "http://sair-cpa-api.duckdns.org"; 

// const String kBaseUrl = "http://10.0.2.2:8080"; // For Android Emulator
// const String kBaseUrl = "http://localhost:8080"; // For Web/Windows/Simulators

// Auth Endpoints
const String kRegisterEndpoint = "/auth/register";
const String kLoginEndpoint = "/auth/login";
const String kLogoutEndpoint = "/auth/logout";
const String kMeEndpoint = "/me";

// User Endpoints
const String kUsersEndpoint = "/users";

// Report Endpoints
const String kReportsEndpoint = "/reports";

// Notification Endpoints
const String kNotificationsEndpoint = "/notifications";

// Health Endpoints
const String kHealthEndpoint = "/health";

// Legacy Compatibility Class
class ApiEndpoints {
  static const String baseUrl = kBaseUrl;
  static const String login = kLoginEndpoint;
  static const String me = kMeEndpoint;
  static const String users = kUsersEndpoint;
  static const String reports = kReportsEndpoint;
  static const String notifications = kNotificationsEndpoint;
  static const String health = kHealthEndpoint;
}
