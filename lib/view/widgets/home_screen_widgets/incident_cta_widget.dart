import 'package:flutter/material.dart';
import 'package:sair_cpa/view/app_theme.dart';

class IncidentCtaWidget extends StatelessWidget {
  const IncidentCtaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text("Had a minor incident?", style: theme.textTheme.titleLarge),
        const SizedBox(height: 6),
        Text(
          "Quickly report and get back on your way.",
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(height: 20),

        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 32),
          decoration: BoxDecoration(
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: theme.primaryColor.withValues(alpha:0.3),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha:0.15),
                  shape: BoxShape.circle,
                  border: Border.all(color: AppTheme.borderLight)
                ),
                child: Icon(
                  Icons.warning,
                  color: theme.colorScheme.onPrimary,
                  size: 32,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Report Minor Accident",
                style: theme.textTheme.titleMedium!.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Report Now - (سير)",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimary.withValues(alpha:0.8),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
