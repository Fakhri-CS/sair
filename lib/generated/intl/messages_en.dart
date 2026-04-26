// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(role) => "${role} ACCOUNT";

  static String m1(count) =>
      "${Intl.plural(count, zero: 'You have no active reports', one: 'You have 1 active report', other: 'You have ${count} active reports')}";

  static String m2(version, portalName) =>
      "Sair App v${version} • ${portalName}";

  static String m3(error) => "Could not load recent activity: ${error}";

  static String m4(error) => "Error loading profile: ${error}";

  static String m5(error) => "Error: ${error}";

  static String m6(name) => "Hi, ${name}";

  static String m7(error) => "Login Failed: ${error}";

  static String m8(count) =>
      "${Intl.plural(count, zero: 'No photos attached', one: '1 photo attached', other: '${count} photos attached')}";

  static String m9(error) => "Registration Failed: ${error}";

  static String m10(error) => "Failed: ${error}";

  static String m11(days) => "${days}d ago";

  static String m12(hours) => "${hours}h ago";

  static String m13(minutes) => "${minutes}m ago";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "accidentLocationTitle": MessageLookupByLibrary.simpleMessage(
      "Accident Location",
    ),
    "accidentReportTitle": MessageLookupByLibrary.simpleMessage(
      "Accident Report",
    ),
    "accidentTypeFrontal": MessageLookupByLibrary.simpleMessage("Frontal"),
    "accidentTypeOther": MessageLookupByLibrary.simpleMessage("Other"),
    "accidentTypeRearEnd": MessageLookupByLibrary.simpleMessage("Rear-end"),
    "accidentTypeSideSwipe": MessageLookupByLibrary.simpleMessage("Side Swipe"),
    "accidentTypeTitle": MessageLookupByLibrary.simpleMessage("Accident Type"),
    "accountProtectionLabel": MessageLookupByLibrary.simpleMessage(
      "ACCOUNT PROTECTION",
    ),
    "accountStatusLabel": MessageLookupByLibrary.simpleMessage(
      "ACCOUNT STATUS",
    ),
    "accountStatusType": m0,
    "accountStatusVerified": MessageLookupByLibrary.simpleMessage("VERIFIED"),
    "activeReportsCount": m1,
    "addPlateButton": MessageLookupByLibrary.simpleMessage("Add Plate"),
    "alertsAndUpdatesLabel": MessageLookupByLibrary.simpleMessage(
      "ALERTS & UPDATES",
    ),
    "allowNotifications": MessageLookupByLibrary.simpleMessage(
      "Allow Notifications",
    ),
    "allowNotificationsSubtitle": MessageLookupByLibrary.simpleMessage(
      "Enable all push notifications",
    ),
    "alreadyHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Already have an account? ",
    ),
    "appFooterText": m2,
    "arabicLabel": MessageLookupByLibrary.simpleMessage("العربية"),
    "arabicSubtitle": MessageLookupByLibrary.simpleMessage("Arabic"),
    "cancelButton": MessageLookupByLibrary.simpleMessage("Cancel"),
    "contactSupport": MessageLookupByLibrary.simpleMessage(
      "Having trouble? Contact Support at 19900",
    ),
    "copyrightText": MessageLookupByLibrary.simpleMessage(
      "© 2024 SAIR Digital Governance. All Rights Reserved.",
    ),
    "createAccountSubtitle": MessageLookupByLibrary.simpleMessage(
      "Please fill in your details to register as a citizen.",
    ),
    "createAccountTitle": MessageLookupByLibrary.simpleMessage(
      "Create Account",
    ),
    "currentStatusLabel": MessageLookupByLibrary.simpleMessage(
      "Current Status",
    ),
    "dashboardSubtitle": MessageLookupByLibrary.simpleMessage(
      "Everything looks secure today.",
    ),
    "dashboardTitle": MessageLookupByLibrary.simpleMessage("Your Dashboard"),
    "dateLabel": MessageLookupByLibrary.simpleMessage("DATE"),
    "deleteButton": MessageLookupByLibrary.simpleMessage("Delete"),
    "descriptionHint": MessageLookupByLibrary.simpleMessage(
      "Add any additional details here...",
    ),
    "descriptionTitle": MessageLookupByLibrary.simpleMessage("Description"),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Don\'t have account?",
    ),
    "emailAlerts": MessageLookupByLibrary.simpleMessage("Email Alerts"),
    "emailAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
      "Receive incident summaries via email",
    ),
    "emailHint": MessageLookupByLibrary.simpleMessage(
      "e.g., citizen@example.com",
    ),
    "emailLabel": MessageLookupByLibrary.simpleMessage("Email Address"),
    "englishLabel": MessageLookupByLibrary.simpleMessage("English (US)"),
    "englishSubtitle": MessageLookupByLibrary.simpleMessage("English"),
    "enterPlateExactlyHint": MessageLookupByLibrary.simpleMessage(
      "Enter characters and numbers exactly as on plate",
    ),
    "errorEmptyEmail": MessageLookupByLibrary.simpleMessage(
      "Please enter your email",
    ),
    "errorEmptyFullName": MessageLookupByLibrary.simpleMessage(
      "Please enter your full name",
    ),
    "errorEmptyPhone": MessageLookupByLibrary.simpleMessage(
      "Please enter your phone number",
    ),
    "errorInvalidEmail": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid email address",
    ),
    "errorLoadingActivity": m3,
    "errorLoadingProfile": m4,
    "errorLoadingProfileBasic": MessageLookupByLibrary.simpleMessage(
      "Error loading profile",
    ),
    "errorMessage": m5,
    "evidenceCapturedTitle": MessageLookupByLibrary.simpleMessage(
      "Evidence Captured",
    ),
    "evidencePreviewTitle": MessageLookupByLibrary.simpleMessage(
      "Evidence Preview",
    ),
    "failedToLoadNotifications": MessageLookupByLibrary.simpleMessage(
      "Failed to load notifications",
    ),
    "fullNameHint": MessageLookupByLibrary.simpleMessage(
      "e.g., Postman Citizen",
    ),
    "fullNameLabel": MessageLookupByLibrary.simpleMessage("Full Name"),
    "getCurrentLocation": MessageLookupByLibrary.simpleMessage(
      "Get Current Location",
    ),
    "globalSettingsLabel": MessageLookupByLibrary.simpleMessage(
      "GLOBAL SETTINGS",
    ),
    "governmentServicesPortal": MessageLookupByLibrary.simpleMessage(
      "Government Services Portal",
    ),
    "greetingHi": m6,
    "guestAccount": MessageLookupByLibrary.simpleMessage("GUEST ACCOUNT"),
    "guestUser": MessageLookupByLibrary.simpleMessage("Guest User"),
    "homeNav": MessageLookupByLibrary.simpleMessage("Home"),
    "incidentInfoTitle": MessageLookupByLibrary.simpleMessage(
      "Incident Information",
    ),
    "incidentQuestion": MessageLookupByLibrary.simpleMessage(
      "Had a minor incident?",
    ),
    "incidentSubtitle": MessageLookupByLibrary.simpleMessage(
      "Quickly report and get back on your way.",
    ),
    "languageTitle": MessageLookupByLibrary.simpleMessage("Language"),
    "licensePlateTitle": MessageLookupByLibrary.simpleMessage("License Plate"),
    "liveSystem": MessageLookupByLibrary.simpleMessage("LIVE SYSTEM"),
    "locationLabel": MessageLookupByLibrary.simpleMessage("LOCATION"),
    "locationLabelCap": MessageLookupByLibrary.simpleMessage("LOCATION"),
    "locationNotChosen": MessageLookupByLibrary.simpleMessage(
      "Location not chosen",
    ),
    "locationPreviewTitle": MessageLookupByLibrary.simpleMessage(
      "Location Preview",
    ),
    "logInLink": MessageLookupByLibrary.simpleMessage("Log in"),
    "loginButton": MessageLookupByLibrary.simpleMessage("Login"),
    "loginFailedMsg": m7,
    "mockCategory": MessageLookupByLibrary.simpleMessage("Road Maintenance"),
    "mockDate": MessageLookupByLibrary.simpleMessage("24 Oct 2023"),
    "mockLocation": MessageLookupByLibrary.simpleMessage("Al-Olaya, Riyadh"),
    "mockReportId": MessageLookupByLibrary.simpleMessage("SR-99281"),
    "mockStatusApproved": MessageLookupByLibrary.simpleMessage("approved"),
    "multiplePhotosNotSupported": MessageLookupByLibrary.simpleMessage(
      "Right now you can\'t submit multiple photos.",
    ),
    "myReportsNav": MessageLookupByLibrary.simpleMessage("My Reports"),
    "nationalIdHint": MessageLookupByLibrary.simpleMessage("e.g., 1234567890"),
    "nationalIdLabel": MessageLookupByLibrary.simpleMessage("National ID"),
    "needHelpSubtitle": MessageLookupByLibrary.simpleMessage(
      "Submit a new inquiry or report an issue to your local\nmunicipality.",
    ),
    "needHelpTitle": MessageLookupByLibrary.simpleMessage("Need help?"),
    "noEvidenceCaptured": MessageLookupByLibrary.simpleMessage(
      "No evidence captured yet.",
    ),
    "noNotificationsYet": MessageLookupByLibrary.simpleMessage(
      "No notifications yet",
    ),
    "noRecentActivity": MessageLookupByLibrary.simpleMessage(
      "No recent activity found.",
    ),
    "noReportSelected": MessageLookupByLibrary.simpleMessage(
      "No report selected",
    ),
    "noReportsFound": MessageLookupByLibrary.simpleMessage("No reports found."),
    "notAvailable": MessageLookupByLibrary.simpleMessage("N/A"),
    "notificationsTitle": MessageLookupByLibrary.simpleMessage("Notifications"),
    "passwordHint": MessageLookupByLibrary.simpleMessage(
      "Enter a secure password",
    ),
    "passwordLabel": MessageLookupByLibrary.simpleMessage("Password"),
    "phoneHint": MessageLookupByLibrary.simpleMessage("e.g., 0790000000"),
    "phoneLabel": MessageLookupByLibrary.simpleMessage("Phone Number"),
    "photosCountLabel": m8,
    "plateNumbersHint": MessageLookupByLibrary.simpleMessage("Plate numbers"),
    "preferencesLabel": MessageLookupByLibrary.simpleMessage("PREFERENCES"),
    "pressToReportHint": MessageLookupByLibrary.simpleMessage(
      "Press Here To Report",
    ),
    "previewButton": MessageLookupByLibrary.simpleMessage("Preview"),
    "profileTitle": MessageLookupByLibrary.simpleMessage("Profile"),
    "progressApproved": MessageLookupByLibrary.simpleMessage("Report Approved"),
    "progressReceived": MessageLookupByLibrary.simpleMessage("Report Received"),
    "progressUnderReview": MessageLookupByLibrary.simpleMessage("Under Review"),
    "recentActivityTitle": MessageLookupByLibrary.simpleMessage(
      "Recent Activity",
    ),
    "registerAppBarTitle": MessageLookupByLibrary.simpleMessage("Register"),
    "registerButton": MessageLookupByLibrary.simpleMessage("Register"),
    "registerFailedMsg": m9,
    "registerNow": MessageLookupByLibrary.simpleMessage("Register Now"),
    "registerSuccessMessage": MessageLookupByLibrary.simpleMessage(
      "Registration Successful!",
    ),
    "registerSuccessMsg": MessageLookupByLibrary.simpleMessage(
      "Registration Successful! Please log in.",
    ),
    "removePhotoContent": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete this evidence?",
    ),
    "removePhotoTitle": MessageLookupByLibrary.simpleMessage("Remove Photo?"),
    "reportApprovedStatus": MessageLookupByLibrary.simpleMessage(
      "Report Approved",
    ),
    "reportDetailsSubtitle": MessageLookupByLibrary.simpleMessage(
      "Please provide accurate info to ensure quick\nprocessing",
    ),
    "reportDetailsTitle": MessageLookupByLibrary.simpleMessage(
      "Report Details",
    ),
    "reportIdLabel": MessageLookupByLibrary.simpleMessage("REPORT ID"),
    "reportMinorAccidentBtn": MessageLookupByLibrary.simpleMessage(
      "Report Minor Accident",
    ),
    "reportProgressTitle": MessageLookupByLibrary.simpleMessage(
      "Report Progress",
    ),
    "reportStatus": MessageLookupByLibrary.simpleMessage("Report Status"),
    "reportStatusSubtitle": MessageLookupByLibrary.simpleMessage(
      "Get notified when report progress changes",
    ),
    "reportSubmitError": m10,
    "reportSubmitSuccess": MessageLookupByLibrary.simpleMessage(
      "Report submitted successfully!",
    ),
    "reportsTitle": MessageLookupByLibrary.simpleMessage("Reports"),
    "retryBtn": MessageLookupByLibrary.simpleMessage("Retry"),
    "safetyFirstDescription": MessageLookupByLibrary.simpleMessage(
      "Before reporting, move your vehicle to the nearest safe location to avoid obstructing traffic.",
    ),
    "safetyFirstTitle": MessageLookupByLibrary.simpleMessage("Safety First"),
    "secureAccessSubtitle": MessageLookupByLibrary.simpleMessage(
      "Secure access to the unified\ngovernment portal",
    ),
    "secureEncryptionText": MessageLookupByLibrary.simpleMessage(
      "100% SECURE ENCRYPTION",
    ),
    "securityTitle": MessageLookupByLibrary.simpleMessage("Security"),
    "selectOnMap": MessageLookupByLibrary.simpleMessage("Select on Map"),
    "settingsHeader": MessageLookupByLibrary.simpleMessage("SETTINGS"),
    "settingsLanguage": MessageLookupByLibrary.simpleMessage("Language"),
    "settingsLanguageSubtitle": MessageLookupByLibrary.simpleMessage(
      "English (US)",
    ),
    "settingsLogout": MessageLookupByLibrary.simpleMessage("Logout"),
    "settingsLogoutSubtitle": MessageLookupByLibrary.simpleMessage(
      "End current session",
    ),
    "settingsNotifications": MessageLookupByLibrary.simpleMessage(
      "Notifications",
    ),
    "settingsNotificationsSubtitle": MessageLookupByLibrary.simpleMessage(
      "All enabled",
    ),
    "settingsSecurity": MessageLookupByLibrary.simpleMessage("Security"),
    "settingsSecuritySubtitle": MessageLookupByLibrary.simpleMessage(
      "2FA Enabled",
    ),
    "smsNotifications": MessageLookupByLibrary.simpleMessage(
      "SMS Notifications",
    ),
    "smsNotificationsSubtitle": MessageLookupByLibrary.simpleMessage(
      "Critical updates sent to your phone",
    ),
    "somethingWentWrong": MessageLookupByLibrary.simpleMessage(
      "Something went wrong!",
    ),
    "statusApproved": MessageLookupByLibrary.simpleMessage("Approved"),
    "statusApprovedShort": MessageLookupByLibrary.simpleMessage("Approved"),
    "statusPending": MessageLookupByLibrary.simpleMessage("Pending"),
    "statusRejected": MessageLookupByLibrary.simpleMessage("Rejected"),
    "statusUnderReview": MessageLookupByLibrary.simpleMessage("Under Review"),
    "submitNewReportBtn": MessageLookupByLibrary.simpleMessage(
      "Submit New Report",
    ),
    "submitReport": MessageLookupByLibrary.simpleMessage("Submit Report"),
    "submittedOnLabel": MessageLookupByLibrary.simpleMessage("SUBMITTED ON"),
    "switchLanguageText": MessageLookupByLibrary.simpleMessage("عربي"),
    "takePicture": MessageLookupByLibrary.simpleMessage("Take Picture"),
    "timeDaysAgo": m11,
    "timeHoursAgo": m12,
    "timeLabel": MessageLookupByLibrary.simpleMessage("TIME"),
    "timeMinutesAgo": m13,
    "totalReportsLabel": MessageLookupByLibrary.simpleMessage("TOTAL REPORTS"),
    "trackInteractions": MessageLookupByLibrary.simpleMessage(
      "Track Interactions",
    ),
    "tryAgainBtn": MessageLookupByLibrary.simpleMessage("Try Again"),
    "twoFactorAuth": MessageLookupByLibrary.simpleMessage(
      "Two-Factor Auth (2FA)",
    ),
    "twoFactorSubtitle": MessageLookupByLibrary.simpleMessage(
      "Require code on new devices",
    ),
    "verifiedCitizenStatus": MessageLookupByLibrary.simpleMessage(
      "Verified Citizen",
    ),
    "viewDetails": MessageLookupByLibrary.simpleMessage("View Details"),
    "welcomeBack": MessageLookupByLibrary.simpleMessage("Welcome Back"),
  };
}
