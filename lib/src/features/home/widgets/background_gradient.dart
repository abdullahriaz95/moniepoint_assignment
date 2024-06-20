import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({
    this.child,
    super.key,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          radius: 2,
          center: Alignment.bottomRight,
          colors: [
            context.theme.colorScheme.primary.withOpacity(0.4),
            context.theme.colorScheme.surface,
          ],
          transform: const GradientRotation(-0.6),
        ),
      ),
      child: child,
    );
  }
}
