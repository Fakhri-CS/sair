import 'package:flutter/material.dart';
import 'package:sair_cpa/view/routes.dart';

class FooterLinksWidget extends StatelessWidget {
  const FooterLinksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoute.registerScreen.route);
          },
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text("Register Now"),
    );
  }
}
