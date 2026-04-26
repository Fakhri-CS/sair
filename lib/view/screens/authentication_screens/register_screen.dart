import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/widgets/global_widgets/sair_app_bar.dart';
import 'package:sair_cpa/view/widgets/global_widgets/text_field_widget.dart';
import 'package:sair_cpa/view_model/authentication_logic_provider.dart';
import 'package:sair_cpa/view_model/register_view_provider.dart';
import 'package:sair_cpa/model/user_model.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _nationalIdController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _nationalIdController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final requestData = {
        "fullName": _fullNameController.text.trim(),
        "email": _emailController.text.trim(),
        "phone": _phoneController.text.trim(),
        "nationalId": _nationalIdController.text.trim(),
        "password": _passwordController.text,
      };
      
      ref.read(registerViewModelProvider.notifier).register(requestData);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final registerState = ref.watch(registerViewModelProvider);

    ref.listen<AsyncValue<UserModel?>>(registerViewModelProvider, (previous, next) {
      next.when(
        data: (user) {
          if (user != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Registration Successful! Please log in.')),
            );
            Navigator.pop(context);
          }
        },
        error: (error, stack) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Registration Failed: $error'), backgroundColor: theme.colorScheme.error),
          );
        },
        loading: () {},
      );
    });
    final l10n = S.of(context); // Initialize localization

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: SairAppBar(
        title: l10n.registerAppBarTitle, // Localized string
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.createAccountTitle, // Localized string
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.createAccountSubtitle, // Localized string
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
                const SizedBox(height: 32),
                RegisterTextFieldWidget(
                  controller: _fullNameController,
                  label: l10n.fullNameLabel, // Localized string
                  hint: l10n.fullNameHint, // Localized string
                  icon: Icons.person_outline,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return l10n.errorEmptyFullName; // Localized string
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                RegisterTextFieldWidget(
                  controller: _emailController,
                  label: l10n.emailLabel, // Localized string
                  hint: l10n.emailHint, // Localized string
                  icon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return l10n.errorEmptyEmail; // Localized string
                    }
                    if (!value.contains('@')) {
                      return l10n.errorInvalidEmail; // Localized string
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                RegisterTextFieldWidget(
                  controller: _phoneController,
                  label: l10n.phoneLabel, // Localized string
                  hint: l10n.phoneHint, // Localized string
                  icon: Icons.phone_outlined,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return l10n.errorEmptyPhone; // Localized string
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                RegisterTextFieldWidget(
                  controller: _nationalIdController,
                  label: l10n.nationalIdLabel, // Reusing existing key
                  hint: l10n.nationalIdHint, // Reusing existing key
                  icon: Icons.badge_outlined,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    return ref.read(nationalIdValidatorProvider(value));
                  },
                ),
                const SizedBox(height: 16),

                RegisterTextFieldWidget(
                  controller: _passwordController,
                  label: l10n.passwordLabel, // Reusing existing key
                  hint: l10n.passwordHint, // Reusing existing key
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
                const SizedBox(height: 32),

                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: registerState.isLoading ? null : _submitForm,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: registerState.isLoading
                        ? const SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : Text(
                            l10n.registerButton, // Localized string
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      l10n.alreadyHaveAccount, // Localized string
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.6,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        l10n.logInLink, // Localized string
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}