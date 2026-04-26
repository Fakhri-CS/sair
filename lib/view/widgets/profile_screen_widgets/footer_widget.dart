import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization

    return Center(
      child: Text(
        l10n.appFooterText("2.4.0", l10n.governmentServicesPortal), // Localized with parameters
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.5),
        ),
      ),
    );
  }
}