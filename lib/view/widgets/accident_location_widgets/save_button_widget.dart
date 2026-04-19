import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sair_cpa/view_model/location_provider.dart';

class SaveButtonWidget extends ConsumerStatefulWidget {
  const SaveButtonWidget({super.key, this.pickedLocation});
  final LatLng? pickedLocation;

  @override
  ConsumerState<SaveButtonWidget> createState() => _SaveButtonWidgetState();
}

class _SaveButtonWidgetState extends ConsumerState<SaveButtonWidget> {
  bool _isSaving = false;
  void _saveLocation(LatLng position) async {
    setState(() {
      _isSaving = true;
    });
    await ref
        .read(locationProvider.notifier)
        .selectLocation(widget.pickedLocation!);
    if (mounted) {
      Navigator.of(context).pop();
    }
    setState(() {
      _isSaving = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isSaving
        ? const CircularProgressIndicator()
        : IconButton(
            icon: const Icon(Icons.save),
            onPressed: widget.pickedLocation == null
                ? null
                : () => _saveLocation(widget.pickedLocation!),
          );
  }
}
