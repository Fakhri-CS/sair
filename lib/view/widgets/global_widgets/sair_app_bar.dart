import 'package:flutter/material.dart';
import 'package:sair_cpa/view/widgets/global_widgets/sair_logo_widget.dart';

class SairAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SairAppBar({super.key,required this.title, this.actions});
  final String title;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(right: 15, left: 15, bottom: 8),
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        border: Border(
          bottom: BorderSide(color: theme.dividerTheme.color!, width: 1.0),
        ),
      ),
      child: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: const SairLogoWidget(width: 32, height: 32),
        titleSpacing: 12,
        centerTitle: false,
        title: Text(title, style: theme.textTheme.titleMedium),
        actions: actions
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
