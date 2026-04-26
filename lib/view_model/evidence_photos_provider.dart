import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    NotifierProvider<EvidencePhotosNotifier, List<File>>(
      EvidencePhotosNotifier.new,
    );
