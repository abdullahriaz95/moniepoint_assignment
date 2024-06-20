import 'dart:async';

import 'package:assignment/src/features/features.dart';
import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final realEstates = ref.watch(realEstateProviderProvider).value;
    final controller = useState(Completer<GoogleMapController>());

    final markers = useState<Set<Marker>>({});

    final buildMarkers = useCallback(() async {
      if (realEstates == null || realEstates.isEmpty) return;
      final newMarkers = <Marker>{};

      await Future.forEach(realEstates, (estate) async {
        final widget = PriceMarker(estate: estate);
        final bitmapDescriptor = await widget.toBitmapDescriptor();
        final marker = Marker(
          markerId: MarkerId(estate.name),
          position: LatLng(estate.latitude, estate.longitude),
          icon: bitmapDescriptor,
          infoWindow: InfoWindow(
            title: estate.name,
            snippet: estate.address,
          ),
        );
        newMarkers.add(marker);
      });

      markers.value = newMarkers;
    });

    final buildGenericMarkers = useCallback(() async {
      if (realEstates == null || realEstates.isEmpty) return;
      final newMarkers = <Marker>{};

      await Future.forEach(realEstates, (estate) async {
        final widget = GenericMarker(estate: estate);
        final bitmapDescriptor = await widget.toBitmapDescriptor();
        final marker = Marker(
          markerId: MarkerId(estate.name),
          position: LatLng(estate.latitude, estate.longitude),
          icon: bitmapDescriptor,
          infoWindow: InfoWindow(
            title: estate.name,
            snippet: estate.address,
          ),
        );
        newMarkers.add(marker);
      });

      print('generic markers: ${newMarkers.length}');

      markers.value = newMarkers;
    });

    return StatusBarWrapper(
      reversed: false,
      child: Stack(
        children: [
          GoogleMap(
            mapToolbarEnabled: false,
            myLocationButtonEnabled: false,
            initialCameraPosition: GoogleMapConstants.googlePlex,
            mapType: MapType.normal,
            onMapCreated: (GoogleMapController mapController) => _onMapCreated(
              controller: controller,
              mapController: mapController,
              callBack: buildMarkers,
            ),
            markers: markers.value.toSet(),
          ),
          const TopSearchBar(),
          BottomControls(
            markerViewSelected: (selectedMarkerView) {
              if (selectedMarkerView == OptionsMenu.price) {
                buildMarkers.call();
              } else {
                buildGenericMarkers.call();
              }
            },
          ),
        ],
      ),
    );
  }

  void _onMapCreated({
    required ValueNotifier<Completer<GoogleMapController>> controller,
    required GoogleMapController mapController,
    required Future<Null> Function() callBack,
  }) async {
    if (controller.value.isCompleted) return;
    controller.value.complete(mapController);
    final c = await controller.value.future;
    c.setMapStyle(GoogleMapConstants.darkMapStyle);
    await Future.delayed(1.seconds);
    await c.animateCamera(
        CameraUpdate.newCameraPosition(GoogleMapConstants.appleInfinity));
    callBack.call();
  }
}
