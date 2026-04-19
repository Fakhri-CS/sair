import 'package:flutter/material.dart';

class LanguageTileWidget extends StatelessWidget {
  const LanguageTileWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.languageCode,
    required this.iconText,
    required this.isFirst,
    required this.isLast,
    required this.selectedLanguage,
    required this.onSelectLang,
  });
  final String title, subtitle, languageCode, iconText, selectedLanguage;
  final bool isFirst, isLast;
  final void Function(String lang) onSelectLang;

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedLanguage == languageCode;
    final theme = Theme.of(context);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          onSelectLang(languageCode);
        },

        borderRadius: BorderRadius.vertical(
          top: isFirst ? const Radius.circular(16) : Radius.zero,
          bottom: isLast ? const Radius.circular(16) : Radius.zero,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isSelected
                      ? theme.primaryColor.withValues(alpha: 0.1)
                      : theme.colorScheme.onSurface.withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  iconText,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: isSelected
                        ? theme.primaryColor
                        : theme.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
              ),
              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              if (isSelected)
                Icon(Icons.check_circle, color: theme.primaryColor, size: 24),
            ],
          ),
        ),
      ),
    );
  }
}
