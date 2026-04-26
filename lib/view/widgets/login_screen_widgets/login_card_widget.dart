import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart';
import 'package:sair_cpa/view/routes.dart';
import 'package:sair_cpa/view/widgets/global_widgets/sair_logo_widget.dart';
import 'package:sair_cpa/view/widgets/global_widgets/text_field_widget.dart';
import 'package:sair_cpa/view/widgets/login_screen_widgets/login_button_widget.dart';
import 'package:sair_cpa/view_model/authentication_logic_provider.dart';

import 'package:sair_cpa/view_model/login_view_provider.dart';
import 'package:sair_cpa/model/login_response.dart';

class LoginCardWidget extends ConsumerStatefulWidget {
  const LoginCardWidget({super.key});

  @override
  ConsumerState<LoginCardWidget> createState() => _LoginCardWidgetState();
}

class _LoginCardWidgetState extends ConsumerState<LoginCardWidget> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    FocusScope.of(context).unfocus();

    if (_formKey.currentState!.validate()) {
      final email = _emailController.text.trim();
      final password = _passwordController.text;

      ref.read(loginViewModelProvider.notifier).login(email, password);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loginState = ref.watch(loginViewModelProvider);

    ref.listen<AsyncValue<LoginResponse?>>(loginViewModelProvider, (previous, next) {
      next.when(
        data: (response) {
          if (response != null) {
            Navigator.pushReplacementNamed(context, AppRoute.main.route);
          }
        },
        error: (error, stack) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Login Failed: $error'), backgroundColor: theme.colorScheme.error),
          );
        },
        loading: () {},
      );
    });
    final l10n = S.of(context)!; // Initialized localization variable

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
            l10n.welcomeBack, // Localized
            style: theme.textTheme.headlineMedium?.copyWith(fontSize: 22),
          ),
          const SizedBox(height: 8),

          Text(
            l10n.secureAccessSubtitle, // Localized
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(height: 1.4),
          ),
          const SizedBox(height: 40),

          Form(
            key: _formKey,
            child: Column(
              children: [
                RegisterTextFieldWidget(

                  controller: _emailController,
                  label: l10n.nationalIdLabel,
                  hint: l10n.nationalIdHint, 
                  icon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,

                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                RegisterTextFieldWidget(
                  controller: _passwordController,
                  label: l10n.passwordLabel, // Localized
                  hint: l10n.passwordHint, // Localized
                  icon: Icons.lock_outline,
                  obscureText: !_isPasswordVisible,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                  validator: (value) {
                    return ref.read(passwordValidatorProvider(value));
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 50),

          LoginButtonWidget(
            onPressed: _submitForm,
            isLoading: loginState.isLoading,
          ),

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
                  l10n.secureEncryptionText, // Localized
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