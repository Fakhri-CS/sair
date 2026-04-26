import 'package:flutter/material.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/widgets/global_widgets/sair_app_bar.dart';
import 'package:sair_cpa/view/widgets/notification_screen_widget/setting_notification_screen_widget.dart';

class SettingsNotificationScreen extends StatefulWidget {
  const SettingsNotificationScreen({super.key});

  @override
  State<SettingsNotificationScreen> createState() => _SettingsNotificationScreenState();
}

class _SettingsNotificationScreenState extends State<SettingsNotificationScreen> {
  bool _masterToggle = true;
  bool _statusUpdates = true;
  bool _emailAlerts = false;
  bool _smsAlerts = true;

  void _onMasterToggleChanged(bool value) {
    setState(() {
      _masterToggle = value;
      if (!value) {
        _statusUpdates = false;
        _emailAlerts = false;
        _smsAlerts = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = S.of(context); // Initialize localization

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: SairAppBar(
        title: l10n.notificationsTitle, // Localized
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
                l10n.globalSettingsLabel, // Localized
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
              child: NotificationTileWidget(
                title: l10n.allowNotifications, // Localized
                subtitle: l10n.allowNotificationsSubtitle, // Localized
                icon: Icons.notifications_active_outlined,
                value: _masterToggle,
                onChanged: _onMasterToggleChanged,
                isFirst: true,
                isLast: true,
              ),
            ),

            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.only(left: 4.0, bottom: 12.0),
              child: Text(
                l10n.alertsAndUpdatesLabel, // Localized
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
                  NotificationTileWidget(
                    title: l10n.reportStatus, // Localized
                    subtitle: l10n.reportStatusSubtitle, // Localized
                    icon: Icons.track_changes_outlined,
                    value: _statusUpdates,
                    onChanged: _masterToggle
                        ? (v) => setState(() => _statusUpdates = v)
                        : null,
                    isFirst: true,
                    isLast: false,
                  ),
                  const Divider(),
                  NotificationTileWidget(
                    title: l10n.emailAlerts, // Localized
                    subtitle: l10n.emailAlertsSubtitle, // Localized
                    icon: Icons.email_outlined,
                    value: _emailAlerts,
                    onChanged: _masterToggle
                        ? (v) => setState(() => _emailAlerts = v)
                        : null,
                    isFirst: false,
                    isLast: false,
                  ),
                  const Divider(),
                  NotificationTileWidget(
                    title: l10n.smsNotifications, // Localized
                    subtitle: l10n.smsNotificationsSubtitle, // Localized
                    icon: Icons.sms_outlined,
                    value: _smsAlerts,
                    onChanged: _masterToggle
                        ? (v) => setState(() => _smsAlerts = v)
                        : null,
                    isFirst: false,
                    isLast: true,
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