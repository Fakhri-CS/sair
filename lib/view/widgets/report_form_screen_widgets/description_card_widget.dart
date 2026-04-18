import 'package:flutter/material.dart';

class DescriptionCardWidget extends StatelessWidget {
  const DescriptionCardWidget({super.key});

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
                Icon(Icons.description_outlined, size: 18, color: theme.primaryColor),
                const SizedBox(width: 8),
                Text(
                  "Description",
                  style: theme.textTheme.titleMedium?.copyWith(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Add any additional details here...",
                alignLabelWithHint: true,
              ),
            ),
          ],
        ),
      ),
    );

  }
}
