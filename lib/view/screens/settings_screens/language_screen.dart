import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/global_widgets/sair_app_bar.dart';
import 'package:sair_cpa/view/widgets/language_screen_widgets/language_tile_widget.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _selectedLanguage = 'en';
  void _selectLang(String lang) {
    setState(() {
      _selectedLanguage = lang;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: SairAppBar(
        title: "Language",
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4.0, bottom: 12.0),
              child: Text(
                "PREFERENCES",
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
                  LanguageTileWidget(
                    title: "English (US)",
                    subtitle: "English",
                    languageCode: 'en',
                    selectedLanguage: _selectedLanguage,
                    iconText: 'En',
                    isFirst: true,
                    isLast: false,
                    onSelectLang: _selectLang,
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: theme.dividerTheme.color ?? Colors.grey.shade100,
                    indent: 64,
                    endIndent: 16,
                  ),
                  LanguageTileWidget(
                    title: "العربية",
                    subtitle: "Arabic",
                    languageCode: 'ar',
                    selectedLanguage: _selectedLanguage,
                    iconText: 'ع',
                    isFirst: false,
                    isLast: true,
                    onSelectLang: _selectLang,
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
