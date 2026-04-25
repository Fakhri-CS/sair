import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/screens/home_screen.dart';
import 'package:sair_cpa/view/screens/profile_screen.dart';
import 'package:sair_cpa/view/screens/reports_screen.dart';
import 'package:sair_cpa/view/widgets/global_widgets/sair_app_bar.dart';
import 'package:sair_cpa/view/widgets/global_widgets/main_actions_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedPageIndex = 0;
  
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context); // Initialize localization

    Widget activeScreen = const HomeScreen();
    PreferredSizeWidget activeAppBar = SairAppBar(
      title: l10n.greetingHi("Fakhri"), // Localized parameterized string
      actions: const [MainActionsWidget()],
    );
    
    if (_selectedPageIndex == 1) {
      activeScreen = const ReportsScreen();
      activeAppBar = SairAppBar(
        title: l10n.reportsTitle, // Localized string
        actions: const [MainActionsWidget()],
      );
    } else if (_selectedPageIndex == 2) {
      activeScreen = const ProfileScreen();
      activeAppBar = SairAppBar(
        title: l10n.profileTitle, // Localized string
        actions: const [MainActionsWidget()],
      );
    }
    
    return Scaffold(
      appBar: activeAppBar,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: activeScreen,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.home_outlined),
            ),
            activeIcon: const Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.home),
            ),
            label: l10n.homeNav, // Localized string
          ),
          BottomNavigationBarItem(
            icon: const Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.assignment_outlined),
            ),
            label: l10n.myReportsNav, // Localized string
          ),
          BottomNavigationBarItem(
            icon: const Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.person_outline),
            ),
            label: l10n.profileTitle, // Reusing localized string
          ),
        ],
      ),
    );
  }
}