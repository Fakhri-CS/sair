import 'package:flutter/material.dart';
import 'package:sair_cpa/view/routes.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, AppRoute.main.route);
      },
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(150, 54),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: const Text("Login", style: TextStyle(letterSpacing: 0.5)),
    );
  }
}
