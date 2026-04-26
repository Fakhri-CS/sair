import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/generated/l10n.dart'; // Added localization import
import 'package:sair_cpa/view/widgets/evidence_preview_screen_widgets/empty_evidence_widget.dart';
import 'package:sair_cpa/view/widgets/evidence_preview_screen_widgets/evidence_grid_widget.dart';
import 'package:sair_cpa/view/widgets/global_widgets/sair_app_bar.dart';
import 'package:sair_cpa/view_model/evidence_photos_provider.dart';

import 'package:sair_cpa/view_model/is_preview_mode_provider.dart';
import 'package:sair_cpa/view_model/selected_report_provider.dart';

class EvidencePreviewScreen extends ConsumerWidget {
  const EvidencePreviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final evidencePhotos = ref.watch(evidencePhotosProvider);
    final isPreviewMode = ref.watch(isPreviewModeProvider);
    final selectedReport = ref.watch(selectedReportProvider);

    final isEmpty = isPreviewMode
        ? (selectedReport?.mediaUrls.isEmpty ?? true)
        : evidencePhotos.isEmpty;
    final l10n = S.of(context); // Initialize localization

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: SairAppBar(
        title: l10n.evidencePreviewTitle, // Localized string
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: isEmpty
          ? const EmptyEvidenceWidget()
          : const EvidenceGridWidget(),
    );
  }
}