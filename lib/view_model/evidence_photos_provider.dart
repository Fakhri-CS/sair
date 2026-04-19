import 'dart:io';

import 'package:riverpod/riverpod.dart';

class EvidencePhotosNotifier extends Notifier<List<File>> {
  @override
  List<File> build() {
    return [];
  }

  void addEvidencePhoto(File image) {
    state = [...state, image];
  }

  void deleteEvidencePhoto(File image) {
    state = state.where((element) => element != image).toList();
  }
}

final evidencePhotosProvider =
    NotifierProvider.autoDispose<EvidencePhotosNotifier, List<File>>(
      EvidencePhotosNotifier.new,
    );
