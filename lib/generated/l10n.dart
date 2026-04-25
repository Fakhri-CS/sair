// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome Back`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'welcomeBack',
      desc: 'Greeting text on the login screen',
      args: [],
    );
  }

  /// `Secure access to the unified\ngovernment portal`
  String get secureAccessSubtitle {
    return Intl.message(
      'Secure access to the unified\ngovernment portal',
      name: 'secureAccessSubtitle',
      desc: 'Subtitle text under the greeting on the login screen',
      args: [],
    );
  }

  /// `National ID`
  String get nationalIdLabel {
    return Intl.message(
      'National ID',
      name: 'nationalIdLabel',
      desc: 'Label for the National ID text field',
      args: [],
    );
  }

  /// `e.g., 1234567890`
  String get nationalIdHint {
    return Intl.message(
      'e.g., 1234567890',
      name: 'nationalIdHint',
      desc: 'Hint text for the National ID text field',
      args: [],
    );
  }

  /// `Password`
  String get passwordLabel {
    return Intl.message(
      'Password',
      name: 'passwordLabel',
      desc: 'Label for the password text field',
      args: [],
    );
  }

  /// `Enter a secure password`
  String get passwordHint {
    return Intl.message(
      'Enter a secure password',
      name: 'passwordHint',
      desc: 'Hint text for the password text field',
      args: [],
    );
  }

  /// `100% SECURE ENCRYPTION`
  String get secureEncryptionText {
    return Intl.message(
      '100% SECURE ENCRYPTION',
      name: 'secureEncryptionText',
      desc: 'Security assurance text at the bottom of the login screen',
      args: [],
    );
  }

  /// `Login`
  String get loginButton {
    return Intl.message(
      'Login',
      name: 'loginButton',
      desc: 'Text for the login button',
      args: [],
    );
  }

  /// `LIVE SYSTEM`
  String get liveSystem {
    return Intl.message(
      'LIVE SYSTEM',
      name: 'liveSystem',
      desc: 'Indicator text for live system status',
      args: [],
    );
  }

  /// `عربي`
  String get switchLanguageText {
    return Intl.message(
      'عربي',
      name: 'switchLanguageText',
      desc: 'Text shown on the button to switch to the Arabic language',
      args: [],
    );
  }

  /// `Register Now`
  String get registerNow {
    return Intl.message(
      'Register Now',
      name: 'registerNow',
      desc: 'Text for the registration link in the footer',
      args: [],
    );
  }

  /// `Don't have account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have account?',
      name: 'dontHaveAccount',
      desc: 'Text shown in the divider before the registration link',
      args: [],
    );
  }

  /// `Having trouble? Contact Support at 19900`
  String get contactSupport {
    return Intl.message(
      'Having trouble? Contact Support at 19900',
      name: 'contactSupport',
      desc: 'Support contact text at the bottom of the login screen',
      args: [],
    );
  }

  /// `© 2024 SAIR Digital Governance. All Rights Reserved.`
  String get copyrightText {
    return Intl.message(
      '© 2024 SAIR Digital Governance. All Rights Reserved.',
      name: 'copyrightText',
      desc: 'Copyright text at the bottom of the login screen',
      args: [],
    );
  }

  /// `Registration Successful!`
  String get registerSuccessMessage {
    return Intl.message(
      'Registration Successful!',
      name: 'registerSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get registerAppBarTitle {
    return Intl.message(
      'Register',
      name: 'registerAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccountTitle {
    return Intl.message(
      'Create Account',
      name: 'createAccountTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in your details to register as a citizen.`
  String get createAccountSubtitle {
    return Intl.message(
      'Please fill in your details to register as a citizen.',
      name: 'createAccountSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullNameLabel {
    return Intl.message('Full Name', name: 'fullNameLabel', desc: '', args: []);
  }

  /// `e.g., Postman Citizen`
  String get fullNameHint {
    return Intl.message(
      'e.g., Postman Citizen',
      name: 'fullNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your full name`
  String get errorEmptyFullName {
    return Intl.message(
      'Please enter your full name',
      name: 'errorEmptyFullName',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailLabel {
    return Intl.message(
      'Email Address',
      name: 'emailLabel',
      desc: '',
      args: [],
    );
  }

  /// `e.g., citizen@example.com`
  String get emailHint {
    return Intl.message(
      'e.g., citizen@example.com',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get errorEmptyEmail {
    return Intl.message(
      'Please enter your email',
      name: 'errorEmptyEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get errorInvalidEmail {
    return Intl.message(
      'Please enter a valid email address',
      name: 'errorInvalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneLabel {
    return Intl.message('Phone Number', name: 'phoneLabel', desc: '', args: []);
  }

  /// `e.g., 0790000000`
  String get phoneHint {
    return Intl.message(
      'e.g., 0790000000',
      name: 'phoneHint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get errorEmptyPhone {
    return Intl.message(
      'Please enter your phone number',
      name: 'errorEmptyPhone',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get registerButton {
    return Intl.message('Register', name: 'registerButton', desc: '', args: []);
  }

  /// `Already have an account? `
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account? ',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get logInLink {
    return Intl.message('Log in', name: 'logInLink', desc: '', args: []);
  }

  /// `Hi, {name}`
  String greetingHi(String name) {
    return Intl.message(
      'Hi, $name',
      name: 'greetingHi',
      desc: 'Greeting in the app bar on the main screen',
      args: [name],
    );
  }

  /// `Reports`
  String get reportsTitle {
    return Intl.message(
      'Reports',
      name: 'reportsTitle',
      desc: 'App bar title for the reports screen',
      args: [],
    );
  }

  /// `Profile`
  String get profileTitle {
    return Intl.message(
      'Profile',
      name: 'profileTitle',
      desc: 'App bar title and bottom nav label for the profile screen',
      args: [],
    );
  }

  /// `Home`
  String get homeNav {
    return Intl.message(
      'Home',
      name: 'homeNav',
      desc: 'Bottom nav label for the home screen',
      args: [],
    );
  }

  /// `My Reports`
  String get myReportsNav {
    return Intl.message(
      'My Reports',
      name: 'myReportsNav',
      desc: 'Bottom nav label for the reports screen',
      args: [],
    );
  }

  /// `Recent Activity`
  String get recentActivityTitle {
    return Intl.message(
      'Recent Activity',
      name: 'recentActivityTitle',
      desc: 'Title for the recent activity section on the home screen',
      args: [],
    );
  }

  /// `SR-99281`
  String get mockReportId {
    return Intl.message(
      'SR-99281',
      name: 'mockReportId',
      desc: 'Mock data: Report ID',
      args: [],
    );
  }

  /// `approved`
  String get mockStatusApproved {
    return Intl.message(
      'approved',
      name: 'mockStatusApproved',
      desc: 'Mock data: Approved status',
      args: [],
    );
  }

  /// `24 Oct 2023`
  String get mockDate {
    return Intl.message(
      '24 Oct 2023',
      name: 'mockDate',
      desc: 'Mock data: Submission date',
      args: [],
    );
  }

  /// `Al-Olaya, Riyadh`
  String get mockLocation {
    return Intl.message(
      'Al-Olaya, Riyadh',
      name: 'mockLocation',
      desc: 'Mock data: Location',
      args: [],
    );
  }

  /// `Road Maintenance`
  String get mockCategory {
    return Intl.message(
      'Road Maintenance',
      name: 'mockCategory',
      desc: 'Mock data: Report category',
      args: [],
    );
  }

  /// `Evidence Preview`
  String get evidencePreviewTitle {
    return Intl.message(
      'Evidence Preview',
      name: 'evidencePreviewTitle',
      desc: 'App bar title for the evidence preview screen',
      args: [],
    );
  }

  /// `Accident Location`
  String get accidentLocationTitle {
    return Intl.message(
      'Accident Location',
      name: 'accidentLocationTitle',
      desc:
          'App bar title for the screen where users pick the accident location on a map',
      args: [],
    );
  }

  /// `Notifications`
  String get notificationsTitle {
    return Intl.message(
      'Notifications',
      name: 'notificationsTitle',
      desc: 'App bar title for the notifications screen',
      args: [],
    );
  }

  /// `Failed to load notifications`
  String get failedToLoadNotifications {
    return Intl.message(
      'Failed to load notifications',
      name: 'failedToLoadNotifications',
      desc: 'Error message shown when notifications fail to load',
      args: [],
    );
  }

  /// `Try Again`
  String get tryAgainBtn {
    return Intl.message(
      'Try Again',
      name: 'tryAgainBtn',
      desc: 'Button text to retry loading data',
      args: [],
    );
  }

  /// `SETTINGS`
  String get settingsHeader {
    return Intl.message(
      'SETTINGS',
      name: 'settingsHeader',
      desc: 'Header text for the settings section on the profile screen',
      args: [],
    );
  }

  /// `Report Details`
  String get reportDetailsTitle {
    return Intl.message(
      'Report Details',
      name: 'reportDetailsTitle',
      desc: 'App bar title for the report details screen',
      args: [],
    );
  }

  /// `Accident Report`
  String get accidentReportTitle {
    return Intl.message(
      'Accident Report',
      name: 'accidentReportTitle',
      desc: 'App bar title for the accident report form screen',
      args: [],
    );
  }

  /// `Remove Photo?`
  String get removePhotoTitle {
    return Intl.message(
      'Remove Photo?',
      name: 'removePhotoTitle',
      desc: 'Title for the delete evidence confirmation dialog',
      args: [],
    );
  }

  /// `Are you sure you want to delete this evidence?`
  String get removePhotoContent {
    return Intl.message(
      'Are you sure you want to delete this evidence?',
      name: 'removePhotoContent',
      desc: 'Content text for the delete evidence confirmation dialog',
      args: [],
    );
  }

  /// `Cancel`
  String get cancelButton {
    return Intl.message(
      'Cancel',
      name: 'cancelButton',
      desc: 'Generic cancel button text',
      args: [],
    );
  }

  /// `Delete`
  String get deleteButton {
    return Intl.message(
      'Delete',
      name: 'deleteButton',
      desc: 'Generic delete button text',
      args: [],
    );
  }

  /// `No evidence captured yet.`
  String get noEvidenceCaptured {
    return Intl.message(
      'No evidence captured yet.',
      name: 'noEvidenceCaptured',
      desc: 'Empty state text when no photos have been added',
      args: [],
    );
  }

  /// `License Plate`
  String get licensePlateTitle {
    return Intl.message(
      'License Plate',
      name: 'licensePlateTitle',
      desc: 'Title for the license plate input section',
      args: [],
    );
  }

  /// `Add Plate`
  String get addPlateButton {
    return Intl.message(
      'Add Plate',
      name: 'addPlateButton',
      desc: 'Button text to add another license plate input field',
      args: [],
    );
  }

  /// `Plate numbers`
  String get plateNumbersHint {
    return Intl.message(
      'Plate numbers',
      name: 'plateNumbersHint',
      desc: 'Info text shown in preview mode for license plates',
      args: [],
    );
  }

  /// `Enter characters and numbers exactly as on plate`
  String get enterPlateExactlyHint {
    return Intl.message(
      'Enter characters and numbers exactly as on plate',
      name: 'enterPlateExactlyHint',
      desc: 'Info text guiding the user on how to enter the license plate',
      args: [],
    );
  }

  /// `REPORT ID`
  String get reportIdLabel {
    return Intl.message(
      'REPORT ID',
      name: 'reportIdLabel',
      desc: 'Label for the report identifier',
      args: [],
    );
  }

  /// `SUBMITTED ON`
  String get submittedOnLabel {
    return Intl.message(
      'SUBMITTED ON',
      name: 'submittedOnLabel',
      desc: 'Label for the submission date',
      args: [],
    );
  }

  /// `LOCATION`
  String get locationLabel {
    return Intl.message(
      'LOCATION',
      name: 'locationLabel',
      desc: 'Label for the incident location',
      args: [],
    );
  }

  /// `View Details`
  String get viewDetails {
    return Intl.message(
      'View Details',
      name: 'viewDetails',
      desc: 'Button text to navigate to report details',
      args: [],
    );
  }

  /// `Approved`
  String get statusApproved {
    return Intl.message(
      'Approved',
      name: 'statusApproved',
      desc: 'Status badge text for an approved report',
      args: [],
    );
  }

  /// `Pending`
  String get statusPending {
    return Intl.message(
      'Pending',
      name: 'statusPending',
      desc: 'Status badge text for a pending report',
      args: [],
    );
  }

  /// `Rejected`
  String get statusRejected {
    return Intl.message(
      'Rejected',
      name: 'statusRejected',
      desc: 'Status badge text for a rejected report',
      args: [],
    );
  }

  /// `Under Review`
  String get statusUnderReview {
    return Intl.message(
      'Under Review',
      name: 'statusUnderReview',
      desc: 'Status badge text for a report currently under review',
      args: [],
    );
  }

  /// `Accident Type`
  String get accidentTypeTitle {
    return Intl.message(
      'Accident Type',
      name: 'accidentTypeTitle',
      desc: 'Title for the accident type selection section',
      args: [],
    );
  }

  /// `Rear-end`
  String get accidentTypeRearEnd {
    return Intl.message(
      'Rear-end',
      name: 'accidentTypeRearEnd',
      desc: 'Accident type option: Rear-end collision',
      args: [],
    );
  }

  /// `Frontal`
  String get accidentTypeFrontal {
    return Intl.message(
      'Frontal',
      name: 'accidentTypeFrontal',
      desc: 'Accident type option: Frontal collision',
      args: [],
    );
  }

  /// `Side Swipe`
  String get accidentTypeSideSwipe {
    return Intl.message(
      'Side Swipe',
      name: 'accidentTypeSideSwipe',
      desc: 'Accident type option: Side swipe collision',
      args: [],
    );
  }

  /// `Other`
  String get accidentTypeOther {
    return Intl.message(
      'Other',
      name: 'accidentTypeOther',
      desc: 'Accident type option: Other',
      args: [],
    );
  }

  /// `Description`
  String get descriptionTitle {
    return Intl.message(
      'Description',
      name: 'descriptionTitle',
      desc: 'Title for the description/notes section',
      args: [],
    );
  }

  /// `Add any additional details here...`
  String get descriptionHint {
    return Intl.message(
      'Add any additional details here...',
      name: 'descriptionHint',
      desc: 'Hint text for the description text field',
      args: [],
    );
  }

  /// `Evidence Captured`
  String get evidenceCapturedTitle {
    return Intl.message(
      'Evidence Captured',
      name: 'evidenceCapturedTitle',
      desc: 'Title for the evidence card',
      args: [],
    );
  }

  /// `{count, plural, =0{No photos attached} =1{1 photo attached} other{{count} photos attached}}`
  String photosCountLabel(int count) {
    return Intl.plural(
      count,
      zero: 'No photos attached',
      one: '1 photo attached',
      other: '$count photos attached',
      name: 'photosCountLabel',
      desc: 'A pluralized label for the number of evidence photos',
      args: [count],
    );
  }

  /// `Preview`
  String get previewButton {
    return Intl.message(
      'Preview',
      name: 'previewButton',
      desc: 'Button text to preview captured photos',
      args: [],
    );
  }

  /// `Your Dashboard`
  String get dashboardTitle {
    return Intl.message(
      'Your Dashboard',
      name: 'dashboardTitle',
      desc: 'Main heading for the dashboard screen',
      args: [],
    );
  }

  /// `Everything looks secure today.`
  String get dashboardSubtitle {
    return Intl.message(
      'Everything looks secure today.',
      name: 'dashboardSubtitle',
      desc: 'Security status subtitle on the dashboard',
      args: [],
    );
  }

  /// `Had a minor incident?`
  String get incidentQuestion {
    return Intl.message(
      'Had a minor incident?',
      name: 'incidentQuestion',
      desc: 'Heading for the incident report CTA',
      args: [],
    );
  }

  /// `Quickly report and get back on your way.`
  String get incidentSubtitle {
    return Intl.message(
      'Quickly report and get back on your way.',
      name: 'incidentSubtitle',
      desc: 'Subtitle for the incident report CTA',
      args: [],
    );
  }

  /// `Report Minor Accident`
  String get reportMinorAccidentBtn {
    return Intl.message(
      'Report Minor Accident',
      name: 'reportMinorAccidentBtn',
      desc: 'Primary button text to start the accident report',
      args: [],
    );
  }

  /// `Press Here To Report`
  String get pressToReportHint {
    return Intl.message(
      'Press Here To Report',
      name: 'pressToReportHint',
      desc: 'Secondary instruction text inside the CTA button',
      args: [],
    );
  }

  /// `Safety First`
  String get safetyFirstTitle {
    return Intl.message(
      'Safety First',
      name: 'safetyFirstTitle',
      desc: 'Title for the safety banner on the home screen',
      args: [],
    );
  }

  /// `Before reporting, move your vehicle to the nearest safe location to avoid obstructing traffic.`
  String get safetyFirstDescription {
    return Intl.message(
      'Before reporting, move your vehicle to the nearest safe location to avoid obstructing traffic.',
      name: 'safetyFirstDescription',
      desc: 'Safety advice instructions for the user',
      args: [],
    );
  }

  /// `{minutes}m ago`
  String timeMinutesAgo(int minutes) {
    return Intl.message(
      '${minutes}m ago',
      name: 'timeMinutesAgo',
      desc: '',
      args: [minutes],
    );
  }

  /// `{hours}h ago`
  String timeHoursAgo(int hours) {
    return Intl.message(
      '${hours}h ago',
      name: 'timeHoursAgo',
      desc: '',
      args: [hours],
    );
  }

  /// `{days}d ago`
  String timeDaysAgo(int days) {
    return Intl.message(
      '${days}d ago',
      name: 'timeDaysAgo',
      desc: '',
      args: [days],
    );
  }

  /// `No notifications yet`
  String get noNotificationsYet {
    return Intl.message(
      'No notifications yet',
      name: 'noNotificationsYet',
      desc: 'Empty state text when the notification list is empty',
      args: [],
    );
  }

  /// `Sair App v{version} • {portalName}`
  String appFooterText(String version, String portalName) {
    return Intl.message(
      'Sair App v$version • $portalName',
      name: 'appFooterText',
      desc: 'Footer text showing version and portal description',
      args: [version, portalName],
    );
  }

  /// `Government Services Portal`
  String get governmentServicesPortal {
    return Intl.message(
      'Government Services Portal',
      name: 'governmentServicesPortal',
      desc: '',
      args: [],
    );
  }

  /// `Verified Citizen`
  String get verifiedCitizenStatus {
    return Intl.message(
      'Verified Citizen',
      name: 'verifiedCitizenStatus',
      desc: 'Status label for a verified user in the profile card',
      args: [],
    );
  }

  /// `Language`
  String get settingsLanguage {
    return Intl.message(
      'Language',
      name: 'settingsLanguage',
      desc: 'Title for language settings',
      args: [],
    );
  }

  /// `English (US)`
  String get settingsLanguageSubtitle {
    return Intl.message(
      'English (US)',
      name: 'settingsLanguageSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Security`
  String get settingsSecurity {
    return Intl.message(
      'Security',
      name: 'settingsSecurity',
      desc: '',
      args: [],
    );
  }

  /// `2FA Enabled`
  String get settingsSecuritySubtitle {
    return Intl.message(
      '2FA Enabled',
      name: 'settingsSecuritySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get settingsNotifications {
    return Intl.message(
      'Notifications',
      name: 'settingsNotifications',
      desc: '',
      args: [],
    );
  }

  /// `All enabled`
  String get settingsNotificationsSubtitle {
    return Intl.message(
      'All enabled',
      name: 'settingsNotificationsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get settingsLogout {
    return Intl.message('Logout', name: 'settingsLogout', desc: '', args: []);
  }

  /// `End current session`
  String get settingsLogoutSubtitle {
    return Intl.message(
      'End current session',
      name: 'settingsLogoutSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `TOTAL REPORTS`
  String get totalReportsLabel {
    return Intl.message(
      'TOTAL REPORTS',
      name: 'totalReportsLabel',
      desc: 'Label for the total reports count card',
      args: [],
    );
  }

  /// `ACCOUNT STATUS`
  String get accountStatusLabel {
    return Intl.message(
      'ACCOUNT STATUS',
      name: 'accountStatusLabel',
      desc: 'Label for the account status card',
      args: [],
    );
  }

  /// `VERIFIED`
  String get accountStatusVerified {
    return Intl.message(
      'VERIFIED',
      name: 'accountStatusVerified',
      desc: 'Value indicating a verified account status',
      args: [],
    );
  }

  /// `Incident Information`
  String get incidentInfoTitle {
    return Intl.message(
      'Incident Information',
      name: 'incidentInfoTitle',
      desc: 'Title for the incident details information card',
      args: [],
    );
  }

  /// `DATE`
  String get dateLabel {
    return Intl.message('DATE', name: 'dateLabel', desc: '', args: []);
  }

  /// `TIME`
  String get timeLabel {
    return Intl.message('TIME', name: 'timeLabel', desc: '', args: []);
  }

  /// `LOCATION`
  String get locationLabelCap {
    return Intl.message(
      'LOCATION',
      name: 'locationLabelCap',
      desc: '',
      args: [],
    );
  }

  /// `Location Preview`
  String get locationPreviewTitle {
    return Intl.message(
      'Location Preview',
      name: 'locationPreviewTitle',
      desc: 'Title for the map preview section in report details',
      args: [],
    );
  }

  /// `Report Progress`
  String get reportProgressTitle {
    return Intl.message(
      'Report Progress',
      name: 'reportProgressTitle',
      desc: 'Title for the report status timeline card',
      args: [],
    );
  }

  /// `Report Approved`
  String get progressApproved {
    return Intl.message(
      'Report Approved',
      name: 'progressApproved',
      desc: '',
      args: [],
    );
  }

  /// `Under Review`
  String get progressUnderReview {
    return Intl.message(
      'Under Review',
      name: 'progressUnderReview',
      desc: '',
      args: [],
    );
  }

  /// `Report Received`
  String get progressReceived {
    return Intl.message(
      'Report Received',
      name: 'progressReceived',
      desc: '',
      args: [],
    );
  }

  /// `Current Status`
  String get currentStatusLabel {
    return Intl.message(
      'Current Status',
      name: 'currentStatusLabel',
      desc: 'Label for the current status section',
      args: [],
    );
  }

  /// `Report Approved`
  String get reportApprovedStatus {
    return Intl.message(
      'Report Approved',
      name: 'reportApprovedStatus',
      desc: 'Primary status text for an approved report',
      args: [],
    );
  }

  /// `Approved`
  String get statusApprovedShort {
    return Intl.message(
      'Approved',
      name: 'statusApprovedShort',
      desc: 'Short status indicator text',
      args: [],
    );
  }

  /// `Submit Report`
  String get submitReport {
    return Intl.message(
      'Submit Report',
      name: 'submitReport',
      desc: 'Text for the main action button to submit a report',
      args: [],
    );
  }

  /// `Take Picture`
  String get takePicture {
    return Intl.message(
      'Take Picture',
      name: 'takePicture',
      desc: 'Text for the camera button to capture evidence',
      args: [],
    );
  }

  /// `Location not chosen`
  String get locationNotChosen {
    return Intl.message(
      'Location not chosen',
      name: 'locationNotChosen',
      desc: 'Text shown when no location has been selected yet',
      args: [],
    );
  }

  /// `Something went wrong!`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong!',
      name: 'somethingWentWrong',
      desc: 'Generic error message for location fetching',
      args: [],
    );
  }

  /// `Get Current Location`
  String get getCurrentLocation {
    return Intl.message(
      'Get Current Location',
      name: 'getCurrentLocation',
      desc: 'Button text to fetch user\'s GPS coordinates',
      args: [],
    );
  }

  /// `Select on Map`
  String get selectOnMap {
    return Intl.message(
      'Select on Map',
      name: 'selectOnMap',
      desc: 'Button text to open a map picker',
      args: [],
    );
  }

  /// `Please provide accurate info to ensure quick\nprocessing`
  String get reportDetailsSubtitle {
    return Intl.message(
      'Please provide accurate info to ensure quick\nprocessing',
      name: 'reportDetailsSubtitle',
      desc: 'Instructional subtitle for the report form',
      args: [],
    );
  }

  /// `Track Interactions`
  String get trackInteractions {
    return Intl.message(
      'Track Interactions',
      name: 'trackInteractions',
      desc: 'Header title for the report tracking screen',
      args: [],
    );
  }

  /// `{count, plural, =0{You have no active reports} =1{You have 1 active report} other{You have {count} active reports}}`
  String activeReportsCount(int count) {
    return Intl.plural(
      count,
      zero: 'You have no active reports',
      one: 'You have 1 active report',
      other: 'You have $count active reports',
      name: 'activeReportsCount',
      desc: 'A pluralized label for the number of active reports',
      args: [count],
    );
  }

  /// `Need help?`
  String get needHelpTitle {
    return Intl.message(
      'Need help?',
      name: 'needHelpTitle',
      desc: 'Title for the support/inquiry card',
      args: [],
    );
  }

  /// `Submit a new inquiry or report an issue to your local\nmunicipality.`
  String get needHelpSubtitle {
    return Intl.message(
      'Submit a new inquiry or report an issue to your local\nmunicipality.',
      name: 'needHelpSubtitle',
      desc: 'Subtitle explaining how to get help from the municipality',
      args: [],
    );
  }

  /// `Submit New Report`
  String get submitNewReportBtn {
    return Intl.message(
      'Submit New Report',
      name: 'submitNewReportBtn',
      desc: 'Button text to start a new support report',
      args: [],
    );
  }

  /// `Language`
  String get languageTitle {
    return Intl.message(
      'Language',
      name: 'languageTitle',
      desc: 'Title for the language selection screen',
      args: [],
    );
  }

  /// `PREFERENCES`
  String get preferencesLabel {
    return Intl.message(
      'PREFERENCES',
      name: 'preferencesLabel',
      desc: 'Header for the preferences section',
      args: [],
    );
  }

  /// `English (US)`
  String get englishLabel {
    return Intl.message(
      'English (US)',
      name: 'englishLabel',
      desc: '',
      args: [],
    );
  }

  /// `العربية`
  String get arabicLabel {
    return Intl.message('العربية', name: 'arabicLabel', desc: '', args: []);
  }

  /// `English`
  String get englishSubtitle {
    return Intl.message('English', name: 'englishSubtitle', desc: '', args: []);
  }

  /// `Arabic`
  String get arabicSubtitle {
    return Intl.message('Arabic', name: 'arabicSubtitle', desc: '', args: []);
  }

  /// `Security`
  String get securityTitle {
    return Intl.message(
      'Security',
      name: 'securityTitle',
      desc: 'Title for the security settings screen',
      args: [],
    );
  }

  /// `ACCOUNT PROTECTION`
  String get accountProtectionLabel {
    return Intl.message(
      'ACCOUNT PROTECTION',
      name: 'accountProtectionLabel',
      desc: 'Section header for security protection features',
      args: [],
    );
  }

  /// `Two-Factor Auth (2FA)`
  String get twoFactorAuth {
    return Intl.message(
      'Two-Factor Auth (2FA)',
      name: 'twoFactorAuth',
      desc: 'Title for the 2FA toggle',
      args: [],
    );
  }

  /// `Require code on new devices`
  String get twoFactorSubtitle {
    return Intl.message(
      'Require code on new devices',
      name: 'twoFactorSubtitle',
      desc: 'Subtitle explaining what 2FA does',
      args: [],
    );
  }

  /// `GLOBAL SETTINGS`
  String get globalSettingsLabel {
    return Intl.message(
      'GLOBAL SETTINGS',
      name: 'globalSettingsLabel',
      desc: '',
      args: [],
    );
  }

  /// `Allow Notifications`
  String get allowNotifications {
    return Intl.message(
      'Allow Notifications',
      name: 'allowNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Enable all push notifications`
  String get allowNotificationsSubtitle {
    return Intl.message(
      'Enable all push notifications',
      name: 'allowNotificationsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `ALERTS & UPDATES`
  String get alertsAndUpdatesLabel {
    return Intl.message(
      'ALERTS & UPDATES',
      name: 'alertsAndUpdatesLabel',
      desc: '',
      args: [],
    );
  }

  /// `Report Status`
  String get reportStatus {
    return Intl.message(
      'Report Status',
      name: 'reportStatus',
      desc: '',
      args: [],
    );
  }

  /// `Get notified when report progress changes`
  String get reportStatusSubtitle {
    return Intl.message(
      'Get notified when report progress changes',
      name: 'reportStatusSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Email Alerts`
  String get emailAlerts {
    return Intl.message(
      'Email Alerts',
      name: 'emailAlerts',
      desc: '',
      args: [],
    );
  }

  /// `Receive incident summaries via email`
  String get emailAlertsSubtitle {
    return Intl.message(
      'Receive incident summaries via email',
      name: 'emailAlertsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `SMS Notifications`
  String get smsNotifications {
    return Intl.message(
      'SMS Notifications',
      name: 'smsNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Critical updates sent to your phone`
  String get smsNotificationsSubtitle {
    return Intl.message(
      'Critical updates sent to your phone',
      name: 'smsNotificationsSubtitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
