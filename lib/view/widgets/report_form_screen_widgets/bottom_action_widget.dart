import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import

class BottomActionWidget extends StatelessWidget {
  const BottomActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 32),
      child: ElevatedButton(
        onPressed: () {
          // TODO: Implement submission logic
        },
        child: Text(S.of(context).submitReport), // Localized string
      ),
    );
  }
}