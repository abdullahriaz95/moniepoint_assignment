import 'dart:async';
import 'dart:ui' as ui;

import 'package:assignment/src/config/config.dart';
import 'package:assignment/src/features/features.dart';
import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SearchPage extends HookWidget {
  const SearchPage({super.key});

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
    target: LatLng(37.332219, -122.030616),
    zoom: 16,
  );

  @override
  Widget build(BuildContext context) {
    final controller = useState(Completer<GoogleMapController>());

    return StatusBarWrapper(
      reversed: false,
      child: Stack(
        children: [
          GoogleMap(
            mapToolbarEnabled: false,
            myLocationButtonEnabled: false,
            initialCameraPosition: _kGooglePlex,
            mapType: MapType.normal,
            onMapCreated: (GoogleMapController mapController) => _onMapCreated(
              controller: controller,
              mapController: mapController,
            ),
          ),
          const TopSearchBar(),
          Positioned(
            left: 0,
            right: 0,
            bottom: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    MapButton(
                      iconPath: AppIcons.layers,
                      onTap: () {},
                    ),
                    const SizedBox(height: 10),
                    MapButton(
                      iconPath: AppIcons.navigation,
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                MapButton(
                  iconPath: AppIcons.list,
                  title: 'List of Varients',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onMapCreated({
    required ValueNotifier<Completer<GoogleMapController>> controller,
    required GoogleMapController mapController,
  }) async {
    if (controller.value.isCompleted) return;
    controller.value.complete(mapController);
    final c = await controller.value.future;
    c.setMapStyle(GoogleMapConstants.darkMapStyle);
    await Future.delayed(1.seconds);
    await c.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}

class MapButton extends StatelessWidget {
  const MapButton({
    required this.iconPath,
    required this.onTap,
    this.title,
    super.key,
  });

  final String iconPath;
  final Function() onTap;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(
          sigmaX: 1.0,
          sigmaY: 1.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppDesignColors.white.withOpacity(0.2),
            shape: title != null ? BoxShape.rectangle : BoxShape.circle,
            borderRadius: title != null ? BorderRadius.circular(100) : null,
          ),
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Center(
                child: Image.asset(
                  iconPath,
                  width: 18,
                  height: 18,
                ),
              ),
              if (title != null) ...{
                const SizedBox(width: 10),
                Text(
                  title!,
                  style: context.theme.textTheme.titleMedium?.copyWith(
                    color: AppDesignColors.white,
                  ),
                ),
              }
            ],
          ),
        ),
      ),
    );
  }
}
