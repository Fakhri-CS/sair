import 'package:flutter/material.dart';

class LicensePlateCardWidget extends StatelessWidget {
  const LicensePlateCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.directions_car_outlined,
                  size: 18,
                  color: theme.primaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  "License Plate",
                  style: theme.textTheme.titleMedium?.copyWith(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            // need to handle logic
            TextField(
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: "ABC 1234",
                suffixIcon: Icon(
                  Icons.check_circle_outline,
                  color: theme.dividerTheme.color?.withValues(alpha: 0.8),
                  size: 20,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
              ),
            ),
            const SizedBox(height: 12),

            Row(
              crossAxisAlignment: .start,
              children: [
                Icon(
                  Icons.info_outline,
                  size: 12,
                  color: theme.textTheme.labelSmall?.color,
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    "Enter characters and numbers exactly as on plate",
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.normal,
                      color: theme.textTheme.labelSmall?.color?.withValues(
                        alpha: 0.8,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
