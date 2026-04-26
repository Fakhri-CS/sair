import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart';
import 'package:sair_cpa/view/widgets/global_widgets/sair_app_bar.dart';
import 'package:sair_cpa/view/widgets/language_screen_widgets/language_tile_widget.dart';
import 'package:sair_cpa/view_model/locale_provider.dart';

class LanguageScreen extends ConsumerWidget {
  const LanguageScreen({super.key});

  @override
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = S.of(context);

    final currentLocale = ref.watch(localeProvider);

    final selectedLang = currentLocale.languageCode;

    void onSelectLang(String lang) {
      ref.read(localeProvider.notifier).state = Locale(lang);
    }

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: SairAppBar(
        title: l10n.languageTitle,
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
                l10n.preferencesLabel,
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
                    title: l10n.englishLabel,
                    subtitle: l10n.englishSubtitle,
                    languageCode: 'en',
                    selectedLanguage: selectedLang,
                    iconText: 'En',
                    isFirst: true,
                    isLast: false,
                    onSelectLang: onSelectLang,
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: theme.dividerTheme.color ?? Colors.grey.shade100,
                    indent: 64,
                    endIndent: 16,
                  ),
                  LanguageTileWidget(
                    title: l10n.arabicLabel,
                    subtitle: l10n.arabicSubtitle,
                    languageCode: 'ar',
                    selectedLanguage: selectedLang,
                    iconText: 'ع',
                    isFirst: false,
                    isLast: true,
                    onSelectLang: onSelectLang,
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
