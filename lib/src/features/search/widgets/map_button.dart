import 'package:assignment/src/config/config.dart';
import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

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
