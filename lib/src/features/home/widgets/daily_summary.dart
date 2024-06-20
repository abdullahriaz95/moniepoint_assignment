import 'package:assignment/src/config/config.dart';
import 'package:assignment/src/features/features.dart';
import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Summary extends HookWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    // We calculate the height of the expanded app bar, so that layout
    // adapts to the screen dynamically.
    final expandedHeight =
        16 + 16 + 56 + 50 + 56 + 30 + 75 + (context.width * 0.5);

    return SliverAppBar(
      foregroundColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      expandedHeight: expandedHeight,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 56),
              const LocationAndProfileHeader(),
              const SizedBox(height: 56),
              Text(
                '${context.localizations.hi} Marina',
                style: context.theme.textTheme.titleLarge?.copyWith(
                  color: AppDesignColors.beige,
                ),
              )
                  .animate()
                  .then(delay: 700.milliseconds)
                  .slideY(
                    duration: 800.milliseconds,
                    begin: 1.5,
                    end: 0,
                    curve: Curves.easeInOut,
                  )
                  .fadeIn(
                    duration: 800.milliseconds,
                  ),
              Text(
                context.localizations.letsSelectYourPerfectPlace,
                style: context.theme.textTheme.displayMedium?.copyWith(
                  color: AppDesignColors.grey,
                ),
              )
                  .animate()
                  .then(delay: 1200.milliseconds)
                  .slideY(
                    duration: 800.milliseconds,
                    begin: 0.4,
                    end: 0,
                    curve: Curves.easeInOut,
                  )
                  .fadeIn(
                    duration: 800.milliseconds,
                  ),
              const SizedBox(height: 16),
              Row(
                children: [
                  HomeButton(
                    title: context.localizations.buy,
                    number: '1034',
                    color: context.theme.colorScheme.primary,
                    textColor: context.theme.colorScheme.onPrimary,
                    shape: BoxShape.circle,
                    radius: 100,
                    onTap: () {},
                  ),
                  HomeButton(
                    title: context.localizations.rent,
                    number: '2212',
                    color: AppDesignColors.white,
                    textColor: AppDesignColors.beige,
                    shape: BoxShape.rectangle,
                    radius: 28,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
