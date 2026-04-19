import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/global_widgets/sair_app_bar.dart';
import 'package:sair_cpa/view/widgets/security_widgets/security_toggle_tile_widget.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool _is2FAEnabled = true;

  void _toggle2FA(bool value) {
    setState(() {
      _is2FAEnabled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: SairAppBar(
        title: "Security",
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4.0, bottom: 12.0),
              child: Text(
                "ACCOUNT PROTECTION",
                style: theme.textTheme.labelMedium?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: theme.dividerTheme.color ?? Colors.grey.shade200,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SecurityToggleTile(
                    title: "Two-Factor Auth (2FA)",
                    subtitle: "Require code on new devices",
                    icon: Icons.verified_user_outlined,
                    value: _is2FAEnabled,
                    onChanged: _toggle2FA,
                    isFirst: false,
                    isLast: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
