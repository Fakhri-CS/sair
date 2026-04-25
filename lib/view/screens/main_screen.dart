import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view/screens/home_screen.dart';
import 'package:sair_cpa/view/screens/profile_screen.dart';
import 'package:sair_cpa/view/screens/reports_screen.dart';
import 'package:sair_cpa/view/widgets/global_widgets/sair_app_bar.dart';
import 'package:sair_cpa/view/widgets/global_widgets/main_actions_widget.dart';
import 'package:sair_cpa/view_model/user_view_provider.dart';
import 'package:sair_cpa/view/routes.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final profileState = ref.watch(userProfileProvider);

    return profileState.when(
      data: (profile) {
        if (profile == null) {
          // If profile is null and we are on MainScreen, it means no valid token/session
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacementNamed(context, AppRoute.login.route);
          });
          return const Scaffold(body: Center(child: CircularProgressIndicator()));
        }

        final userName = profile.email.split('@').first; // Fallback since fullName isn't in MeResponse

        Widget activeScreen = const HomeScreen();
        PreferredSizeWidget activeAppBar = SairAppBar(
          title: "Hi, $userName",
          actions: const [MainActionsWidget()],
        );

        if (_selectedPageIndex == 1) {
          activeScreen = const ReportsScreen();
          activeAppBar = const SairAppBar(
            title: "Reports",
            actions: [MainActionsWidget()],
          );
        } else if (_selectedPageIndex == 2) {
          activeScreen = const ProfileScreen();
          activeAppBar = const SairAppBar(
            title: "Profile",
            actions: [MainActionsWidget()],
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
      },
      loading: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, stack) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Error loading profile: $error"),
              ElevatedButton(
                onPressed: () => ref.read(userProfileProvider.notifier).refresh(),
                child: const Text("Retry"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
