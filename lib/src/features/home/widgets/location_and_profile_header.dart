import 'package:assignment/src/config/config.dart';
import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LocationAndProfileHeader extends StatelessWidget {
  const LocationAndProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset(
                AppIcons.location,
                width: 18,
                height: 18,
                color: AppDesignColors.beige,
              ),
              const SizedBox(width: 4),
              Text(
                context.localizations.saintPetersburg,
                style: context.theme.textTheme.bodyLarge?.copyWith(
                  color: AppDesignColors.beige,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ).animate().then(delay: 700.milliseconds).fadeIn(
                duration: 500.milliseconds,
              ),
        ).animate().slideX(
              duration: 800.milliseconds,
              begin: -1.5,
              end: 0,
              curve: Curves.easeInOut,
            ),
        Container(
          width: 50,
          height: 50,
          foregroundDecoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(AppIcons.profileImage),
              fit: BoxFit.cover,
            ),
          ),
        ).animate().then(delay: 0.milliseconds).scaleXY(
              duration: 800.milliseconds,
              curve: Curves.easeInOut,
            ),
      ],
    );
  }
}
