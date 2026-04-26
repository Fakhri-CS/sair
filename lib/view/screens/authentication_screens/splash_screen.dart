import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view/routes.dart';
import 'package:sair_cpa/view_model/user_view_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // No need to call _checkAuth here manually because userProfileProvider 
    // build() will automatically start the check. 
    // We just listen to the provider state.
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Listen for the first time we get a definitive state (data or error)
    ref.listen<AsyncValue>(userProfileProvider, (previous, next) {
      if (!next.isLoading) {
        final profile = next.value;
        if (profile != null) {
          Navigator.pushReplacementNamed(context, AppRoute.main.route);
        } else {
          Navigator.pushReplacementNamed(context, AppRoute.login.route);
        }
      }
    });
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.directions_car, size: 80, color: theme.primaryColor),
            const SizedBox(height: 24),
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(
              "SAIR CPA",
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
