import 'package:flutter/material.dart';
import 'package:sair_cpa/view/routes.dart';

class FooterLinksWidget extends StatelessWidget {
  const FooterLinksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: theme.textTheme.bodyMedium?.color,
            textStyle: const TextStyle(fontSize: 13),
          ),
          child: const Text("Forgot ID?"),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
              color: theme.dividerTheme.color ?? theme.dividerColor,
              shape: BoxShape.circle,
            ),
          ),
        ),

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
        ),
      ],
    );
  }
}
