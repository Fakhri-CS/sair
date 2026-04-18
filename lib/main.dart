import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view/app_theme.dart';
import 'package:sair_cpa/view/screens/home_screen.dart';
import 'package:sair_cpa/view/screens/login_screen.dart';
import 'package:sair_cpa/view/screens/main_screen.dart';
import 'package:sair_cpa/view/screens/report_form_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Sair',
        initialRoute: '/login',
        routes: {
          '/login': (context) => const LoginScreen(),
          '/main': (context) => const MainScreen(),
          '/report_form': (context) => const ReportFormScreen()
        },
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: const ReportFormScreen(),
      ),
    );
  }
}
