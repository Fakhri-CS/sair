import 'package:flutter/material.dart';
import 'package:sair_cpa/view/app_theme.dart';
import 'package:sair_cpa/view/screens/home_screen.dart';
import 'package:sair_cpa/view/screens/login_screen.dart';
import 'package:sair_cpa/view/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unified Government Portal',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const MainScreen(),
    );
  }
}
