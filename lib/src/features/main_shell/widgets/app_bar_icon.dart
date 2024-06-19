import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    required this.icon,
    required this.isSelected,
    required this.name,
    super.key,
  });

  final String icon;
  final bool isSelected;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: ValueKey(name),
      children: [
        _SelectedBackground(
          isSelected: isSelected,
          name: name,
        ),
        _BarIcon(
          name: name,
          isSelected: isSelected,
          icon: icon,
        ),
      ],
    );
  }
}

class _BarIcon extends StatelessWidget {
  const _BarIcon({
    required this.name,
    required this.isSelected,
    required this.icon,
  });

  final String name;
  final bool isSelected;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).goNamed(name);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Image.asset(
          icon,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}

class _SelectedBackground extends HookWidget {
  const _SelectedBackground({
    required this.isSelected,
    required this.name,
  });

  final bool isSelected;
  final String name;

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 300),
    );

    useEffect(() {
      if (isSelected) {
        animationController.forward();
      } else {
        animationController.reverse();
      }
      return null;
    }, [isSelected]);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: isSelected
            ? Colors.transparent
            : context.theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Container(
        key: ValueKey(name),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: context.theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(100),
        ),
        child: const SizedBox(
          height: 24,
          width: 24,
        ),
      )
          .animate(
            controller: animationController,
            autoPlay: false,
          )
          .scaleXY(curve: Curves.easeInOut),
    );
  }
}
