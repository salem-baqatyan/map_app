import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class ZoomControls extends StatelessWidget {
  final MapController mapController;

  const ZoomControls({super.key, required this.mapController});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 550,
      right: 20,
      child: Column(
        children: [
          FloatingActionButton(
            heroTag: 'zoom-in',
            mini: true,
            onPressed: () {
              mapController.move(
                mapController.camera.center,
                mapController.camera.zoom + 1,
              );
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'zoom-out',
            mini: true,
            onPressed: () {
              mapController.move(
                mapController.camera.center,
                mapController.camera.zoom - 1,
              );
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
