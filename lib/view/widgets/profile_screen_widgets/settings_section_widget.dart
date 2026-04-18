import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/profile_screen_widgets/settings_tile_widget.dart';

class SettingsSectionWidget extends StatelessWidget {
  const SettingsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
          const SettingsTileWidget(
            icon: Icons.language,
            title: "Language",
            subtitle: "English (US)",
          ),
          Divider(height: 1, color: theme.dividerTheme.color),

          const SettingsTileWidget(
            icon: Icons.security_outlined,
            title: "Security",
            subtitle: "2FA Enabled",
          ),
          Divider(height: 1, color: theme.dividerTheme.color),

          const SettingsTileWidget(
            icon: Icons.notifications_none_outlined,
            title: "Notifications",
            subtitle: "All enabled",
          ),
          Divider(height: 1, color: theme.dividerTheme.color),

          const SettingsTileWidget(
            icon: Icons.logout,
            title: "Logout",
            subtitle: "End current session",
            isDestructive: true,
          ),
        ],
      ),
    );
  }
}
