import 'package:assignment/src/config/config.dart';
import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Align(
        child: Container(
          padding: const EdgeInsets.all(10),
          constraints: BoxConstraints(maxWidth: context.width * 0.7),
          decoration: BoxDecoration(
            color: AppDesignColors.grey,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: MainAppShellRoute.routeDefinition
                .map(
                  (e) => _AppBarIcon(
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
    );
  }
}

class _AppBarIcon extends StatelessWidget {
  const _AppBarIcon({
    required this.icon,
    required this.isSelected,
    required this.name,
  });

  final String icon;
  final bool isSelected;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (isSelected) ...{
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: context.theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const SizedBox(
              height: 24,
              width: 24,
            ),
          ),
        },
        InkWell(
          onTap: () {
            GoRouter.of(context).goNamed(name);
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isSelected
                  ? Colors.transparent
                  : context.theme.colorScheme.secondary,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              icon,
              width: 24,
              height: 24,
            ),
          ),
        ),
      ],
    );
  }
}
