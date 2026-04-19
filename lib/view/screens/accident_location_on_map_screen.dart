import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sair_cpa/view/widgets/accident_location_widgets/save_button_widget.dart';
import 'package:sair_cpa/view/widgets/global_widgets/sair_app_bar.dart';
import 'package:sair_cpa/view_model/is_preview_mode_provider.dart';

class AccidentLocationOnMapScreen extends ConsumerStatefulWidget {
  final LatLng initialLocation;

  const AccidentLocationOnMapScreen({
    super.key,
    this.initialLocation = const LatLng(31.9522, 35.2332),
  });

  @override
  ConsumerState<AccidentLocationOnMapScreen> createState() =>
      _AccidentLocationOnMapScreenState();
}

class _AccidentLocationOnMapScreenState
    extends ConsumerState<AccidentLocationOnMapScreen> {
  LatLng? _pickedLocation;
  void _selectLocation(LatLng position) {
    setState(() {
      _pickedLocation = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isPreviewMode = ref.watch(isPreviewModeProvider);
    return Scaffold(
      appBar: SairAppBar(
        title: "Accident Location",
        actions: isPreviewMode
            ? [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back),
                ),
              ]
            : [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back),
                ),

                SaveButtonWidget(pickedLocation: _pickedLocation),
              ],
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: widget.initialLocation,
          zoom: 13,
        ),
        onTap: isPreviewMode ? null : _selectLocation,

        markers: (_pickedLocation == null)
            ? {}
            : {
                Marker(
                  markerId: const MarkerId('m1'),
                  position: _pickedLocation!,
                ),
              },
      ),
    );
  }
}
