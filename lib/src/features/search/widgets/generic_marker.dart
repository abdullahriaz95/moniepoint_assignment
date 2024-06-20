import 'package:assignment/src/config/config.dart';
import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';

class GenericMarker extends StatelessWidget {
  const GenericMarker({
    required this.estate,
    super.key,
  });

  final RealEstateModel estate;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppDesignColors.yellow,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(4.0),
        child: Icon(Icons.bungalow_rounded, color: AppDesignColors.white,
        size: 20,
        ),
      ),
    );
  }
}
