import 'package:flutter/material.dart';
import 'package:sair_cpa/view/screens/accident_location_on_map_screen.dart';
import 'package:sair_cpa/view/screens/evidence_preview_screen.dart';
import 'package:sair_cpa/view/screens/authentication_screens/login_screen.dart';
import 'package:sair_cpa/view/screens/main_screen.dart';
import 'package:sair_cpa/view/screens/authentication_screens/register_screen.dart';
import 'package:sair_cpa/view/screens/notification_screen.dart';
import 'package:sair_cpa/view/screens/report_details_screen.dart';
import 'package:sair_cpa/view/screens/report_form_screen.dart';
import 'package:sair_cpa/view/screens/authentication_screens/splash_screen.dart';
import 'package:sair_cpa/view/screens/settings_screens/language_screen.dart';
import 'package:sair_cpa/view/screens/settings_screens/settings_notification_screen.dart';
import 'package:sair_cpa/view/screens/settings_screens/security_screen.dart';

enum AppRoute {
  login('/login'),
  splash('/'),
  main('/main'),
  reportForm('/report_form'),
  accidentLocationOnMap('/accident_location_on_map'),
  evidencePreview('/evidence_preview'),
  reportDetails('/report_details'),
  languageScreen('/language'),
  notificationsScreen('/notifications'),
  securityScreen('/security'),
  registerScreen('/register'),
  notifiactionScreen('/notification');

  final String route;
  const AppRoute(this.route);
}

class Routes {
  static Map<String, WidgetBuilder> get routes => {
    AppRoute.splash.route: (context) => const SplashScreen(),
    AppRoute.login.route: (context) => const LoginScreen(),
    AppRoute.main.route: (context) => const MainScreen(),
    AppRoute.reportForm.route: (context) => const ReportFormScreen(),
    AppRoute.accidentLocationOnMap.route: (context) =>
        const AccidentLocationOnMapScreen(),
    AppRoute.evidencePreview.route: (context) => const EvidencePreviewScreen(),
    AppRoute.reportDetails.route: (context) => const ReportDetailsScreen(),
    AppRoute.languageScreen.route: (context) => const LanguageScreen(),
    AppRoute.notificationsScreen.route: (context) =>
        const SettingsNotificationScreen(),
    AppRoute.securityScreen.route: (context) => const SecurityScreen(),
    AppRoute.registerScreen.route: (context) => const RegisterScreen(),
    AppRoute.notifiactionScreen.route: (context) => const NotificationsScreen(),
  };
}
