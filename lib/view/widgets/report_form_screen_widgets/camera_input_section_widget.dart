import 'package:flutter/material.dart';

class CameraInputSectionWidget extends StatelessWidget {
  const CameraInputSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () {
        // Handle camera launch
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        height: 200, // Fixed height or use AspectRatio
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          // Uses the standard divider color for the border
          border: Border.all(color: theme.dividerTheme.color ?? Colors.grey.shade300),
          // Subtle shadow for depth
          boxShadow: [
            BoxShadow(
              color: theme.shadowColor.withValues(alpha: 0.02),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.primaryColor.withValues(alpha: 0.05),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.camera_outlined, // Aperture-like icon
                size: 32,
                color: theme.primaryColor,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Take Picture",
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}