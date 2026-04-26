import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key, required this.onPressed, this.isLoading = false});
  final void Function() onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(150, 54),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      child: isLoading 
        ? const SizedBox(
            width: 20, 
            height: 20, 
            child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white)
          )
        : const Text(        l10n.loginButton, style: TextStyle(letterSpacing: 0.5)),

    );
  }
}