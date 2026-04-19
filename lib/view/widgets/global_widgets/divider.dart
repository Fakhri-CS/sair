import 'package:flutter/material.dart';

class NotificationTileWidget extends StatelessWidget {
  const NotificationTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Divider(
      height: 1,
      thickness: 1,
      color: theme.dividerTheme.color ?? Colors.grey.shade100,
      indent: 64,
      endIndent: 16,
    );
  }
}
