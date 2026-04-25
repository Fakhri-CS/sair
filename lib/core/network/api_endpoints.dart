// Global API Configuration Variables

// NOTE: Use 10.0.2.2 to access your machine's localhost from an Android Emulator
// const String kBaseUrl = "http://10.0.2.2:8080";
const String kBaseUrl = "http://sair-cpa-api.duckdns.org";

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
