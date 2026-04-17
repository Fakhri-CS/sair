import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/global_widgets/sair_logo_widget.dart';
import 'package:sair_cpa/view/widgets/login_screen_widgets/login_button_widget.dart';

class LoginCardWidget extends StatelessWidget {
  const LoginCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor.withValues(alpha: 0.05),
            blurRadius: 20,
            spreadRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          const SairLogoWidget(width: 75, height: 75),
          const SizedBox(height: 8),

          Text(
            "Welcome Back",
            style: theme.textTheme.headlineMedium?.copyWith(fontSize: 22),
          ),
          const SizedBox(height: 8),

          Text(
            "Secure access to the unified\ngovernment portal",
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(height: 1.4),
          ),
          const SizedBox(height: 32),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "NATIONAL ID / PHONE NUMBER",
              style: theme.textTheme.labelSmall?.copyWith(
                letterSpacing: 0.5,
                fontSize: 10,
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter your ID number",
              prefixIcon: Icon(
                Icons.person_outline,
                color: theme.textTheme.bodyMedium?.color?.withValues(
                  alpha: 0.7,
                ),
              ),
              fillColor: theme.scaffoldBackgroundColor,
            ),
          ),
          const SizedBox(height: 20),

          const LoginButtonWidget(),
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: theme.primaryColor.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock_outline,
                  size: 14,
                  color: theme.primaryColor.withValues(alpha: 0.8),
                ),
                const SizedBox(width: 8),
                Text(
                  "100% SECURE ENCRYPTION",
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.primaryColor.withValues(alpha: 0.8),
                    letterSpacing: 0.5,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
