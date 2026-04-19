import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/login_screen_widgets/bottom_icon_widget.dart';
import 'package:sair_cpa/view/widgets/login_screen_widgets/divider_widget.dart';
import 'package:sair_cpa/view/widgets/login_screen_widgets/footer_links_widget.dart';
import 'package:sair_cpa/view/widgets/login_screen_widgets/login_card_widget.dart';
import 'package:sair_cpa/view/widgets/login_screen_widgets/sanad_login_button_widget.dart';
import 'package:sair_cpa/view/widgets/login_screen_widgets/top_bar_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TopBarWidget(),
              const SizedBox(height: 30),
              const LoginCardWidget(),
              const SizedBox(height: 30),
              const DividerWidget(),
              const SizedBox(height: 30),
              const SanadLoginButtonWidget(),
              const SizedBox(height: 30),
              const FooterLinksWidget(),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.info_outline, size: 16, color: Colors.grey),
                  const SizedBox(width: 8),
                  Text(
                    "Having trouble? Contact Support at 19900",
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Bottom Icons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BottomIconWidget(icon: Icons.phone_iphone_outlined),
                  SizedBox(width: 16),
                  BottomIconWidget(icon: Icons.check_circle_outline),
                ],
              ),
              const SizedBox(height: 20),

              // Copyright
              Text(
                "© 2024 SAIR Digital Governance. All Rights Reserved.",
                style: TextStyle(color: Colors.grey.shade400, fontSize: 10),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
