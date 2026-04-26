import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/routes.dart';

class FooterLinksWidget extends StatelessWidget {
  const FooterLinksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context); // Initialize localization

    return TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed(AppRoute.registerScreen.route);
      },
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text(l10n.registerNow), // Localized string
    );
  }
}