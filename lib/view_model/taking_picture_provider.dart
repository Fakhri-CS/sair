import 'dart:async';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sair_cpa/view_model/evidence_photos_provider.dart';

class TakingPictureNotifier extends AsyncNotifier<File?> {
  @override
  FutureOr<File?> build() {
    return null;
  }

  Future<void> takePicture() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final imagePicker = ImagePicker();
      final pickedImage = await imagePicker.pickImage(
        source: ImageSource.camera,
        maxWidth: 600,
      );
      if (pickedImage == null) {
        return state.value;
      }
      final newFile = File(pickedImage.path);
      ref.read(evidencePhotosProvider.notifier).addEvidencePhoto(newFile);
      return newFile;
    });
  }
}

final takingPictureProvider =
    AsyncNotifierProvider<TakingPictureNotifier, File?>(
      TakingPictureNotifier.new,
    );
