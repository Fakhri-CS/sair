import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/profile_screen_widgets/footer_widget.dart';
import 'package:sair_cpa/view/widgets/profile_screen_widgets/profile_card_widget.dart';
import 'package:sair_cpa/view/widgets/profile_screen_widgets/settings_section_widget.dart';
import 'package:sair_cpa/view/widgets/profile_screen_widgets/status_row_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileCardWidget(),
          const SizedBox(height: 16),

          const StatusRowWidget(),
          const SizedBox(height: 32),

          Text(
            "SETTINGS",
            style: theme.textTheme.labelSmall?.copyWith(
              letterSpacing: 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),

          const SettingsSectionWidget(),
          const SizedBox(height: 32),

          const FooterWidget(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
