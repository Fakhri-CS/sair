import 'package:flutter/material.dart';
import 'package:sair_cpa/view/screens/home_screen.dart';
import 'package:sair_cpa/view/screens/profile_screen.dart';
import 'package:sair_cpa/view/screens/reports_screen.dart';
import 'package:sair_cpa/view/widgets/global_widgets/sair_app_bar.dart';
import 'package:sair_cpa/view/widgets/home_screen_widgets/Home_actions_widget.dart';
import 'package:sair_cpa/view/widgets/global_widgets/reports_and_profile_actions_widget.dart';

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
    Widget activeScreen = const HomeScreen();
    PreferredSizeWidget activeAppBar = const SairAppBar(
      title: "Hi, Fakhri",
      actions: [HomeActionsWidget()],
    );
    if (_selectedPageIndex == 1) {
      activeScreen = const ReportsScreen();
      activeAppBar = const SairAppBar(
        title: "Reports",
        actions: [ReportsAndProfileActionsWidget()],
      );
    } else if (_selectedPageIndex == 2) {
      activeScreen = const ProfileScreen();
      activeAppBar = const SairAppBar(
        title: "Profile",
        actions: [ReportsAndProfileActionsWidget()],
      );
    }
    return Scaffold(
      appBar: activeAppBar,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: activeScreen,
      )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: [
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.home_outlined),
            ),
            activeIcon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.home),
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.assignment_outlined),
            ),
            label: "My Reports",
          ),
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.person_outline),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
