import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart';
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
    final l10n = S.of(context);
    return profileState.when(
      data: (profile) {
        if (profile == null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacementNamed(context, AppRoute.login.route);
          });
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final userName = profile.email
            .split('@')
            .first; // Fallback since fullName isn't in MeResponse

        Widget activeScreen = const HomeScreen();
        PreferredSizeWidget activeAppBar = SairAppBar(
          title: l10n.greetingHi(userName),
          actions: const [MainActionsWidget()],
        );

        if (_selectedPageIndex == 1) {
          activeScreen = const ReportsScreen();
          activeAppBar = SairAppBar(
            title: l10n.reportsTitle,
            actions: [const MainActionsWidget()],
          );
        } else if (_selectedPageIndex == 2) {
          activeScreen = const ProfileScreen();
          activeAppBar = SairAppBar(
            title: l10n.profileTitle,
            actions: [const MainActionsWidget()],
          );
        }

        return Scaffold(
          appBar: activeAppBar,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 16.0,
              ),
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
                label: l10n.homeNav,
              ),
              BottomNavigationBarItem(
                icon: const Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Icon(Icons.assignment_outlined),
                ),
                label: l10n.myReportsNav,
              ),
              BottomNavigationBarItem(
                icon: const Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Icon(Icons.person_outline),
                ),
                label: l10n.profileTitle,
              ),
            ],
          ),
        );
      },
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, stack) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).errorLoadingProfile(error.toString()),
              ),
              ElevatedButton(
                onPressed: () =>
                    ref.read(userProfileProvider.notifier).refresh(),
                child: Text(S.of(context).retryBtn),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
