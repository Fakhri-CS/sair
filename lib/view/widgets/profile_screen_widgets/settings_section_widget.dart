import 'package:flutter/material.dart';
import 'package:sair_cpa/view/routes.dart';
import 'package:sair_cpa/view/widgets/profile_screen_widgets/settings_tile_widget.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view_model/user_view_provider.dart';

class SettingsSectionWidget extends ConsumerWidget {
  const SettingsSectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: theme.dividerTheme.color ?? theme.dividerColor,
        ),
      ),
      child: Column(
        children: [
          SettingsTileWidget(
            icon: Icons.language,
            title: "Language",
            subtitle: "English (US)",
            onTap: () =>
                Navigator.of(context).pushNamed(AppRoute.languageScreen.route),
          ),
          Divider(height: 1, color: theme.dividerTheme.color),

          SettingsTileWidget(
            icon: Icons.security_outlined,
            title: "Security",
            subtitle: "2FA Enabled",
            onTap: () =>
                Navigator.of(context).pushNamed(AppRoute.securityScreen.route),
          ),
          Divider(height: 1, color: theme.dividerTheme.color),

          SettingsTileWidget(
            icon: Icons.notifications_none_outlined,
            title: "Notifications",
            subtitle: "All enabled",
            onTap: () => Navigator.of(
              context,
            ).pushNamed(AppRoute.notificationsScreen.route),
          ),
          Divider(height: 1, color: theme.dividerTheme.color),

          SettingsTileWidget(
            icon: Icons.logout,
            title: "Logout",
            subtitle: "End current session",
            onTap: () async {
              // 1. Perform backend and storage logout
              await ref.read(userProfileProvider.notifier).logout();
              
              // 2. Clear routing history and go to login
              if (context.mounted) {
                Navigator.pushNamedAndRemoveUntil(
                  context, 
                  AppRoute.login.route, 
                  (route) => false,
                );
              }
            },
            isDestructive: true,
          ),
        ],
      ),
    );
  }
}
