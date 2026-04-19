import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sair_cpa/view/widgets/evidence_preview_screen_widgets/empty_evidence_widget.dart';
import 'package:sair_cpa/view/widgets/evidence_preview_screen_widgets/evidence_grid_widget.dart';
import 'package:sair_cpa/view/widgets/global_widgets/sair_app_bar.dart';
import 'package:sair_cpa/view_model/evidence_photos_provider.dart';

class EvidencePreviewScreen extends ConsumerWidget {
  const EvidencePreviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final evidencePhotos = ref.watch(evidencePhotosProvider);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: SairAppBar(
        title: "Evidence Preview",
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: evidencePhotos.isEmpty
          ? const EmptyEvidenceWidget()
          : const EvidenceGridWidget(),
    );
  }
}
