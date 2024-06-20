import 'package:assignment/src/config/config.dart';
import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';

class PriceMarker extends StatelessWidget {
  const PriceMarker({
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
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          '\$${estate.priceInUsd.toInt()}',
          style: context.theme.textTheme.bodySmall?.copyWith(
            color: AppDesignColors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
