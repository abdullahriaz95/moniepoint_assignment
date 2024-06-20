import 'package:assignment/src/config/config.dart';
import 'package:assignment/src/features/features.dart';
import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 0,
      right: 0,
      child: Align(
        child: Container(
          padding: const EdgeInsets.all(6),
          constraints: BoxConstraints(maxWidth: context.width * 0.7),
          decoration: BoxDecoration(
            color: AppDesignColors.grey,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: MainAppShellRoute.routeDefinition
                .map(
                  (e) => AppBarIcon(
                    icon: e.icon!,
                    isSelected:
                        e.path == GoRouterState.of(context).matchedLocation,
                    name: e.name,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    )
        .animate(
          delay: const Duration(milliseconds: 2800),
        )
        .then()
        .moveY(
          begin: 100,
          end: 0,
          duration: const Duration(milliseconds: 300),
        );
  }
}
