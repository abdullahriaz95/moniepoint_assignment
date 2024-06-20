import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    required this.title,
    required this.number,
    required this.color,
    required this.shape,
    required this.radius,
    required this.textColor,
    this.onTap,
    super.key,
  });

  final String title;
  final String number;
  final Color color;
  final BoxShape shape;
  final double radius;
  final Color textColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(8),
          width: double.infinity,
          height: context.width * 0.5 - 32,
          decoration: BoxDecoration(
            shape: shape,
            color: color,
            borderRadius:
                shape == BoxShape.circle ? null : BorderRadius.circular(radius),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                title,
                style: context.theme.textTheme.bodyLarge?.copyWith(
                  color: textColor,
                ),
              ),
              const SizedBox(height: 26),
              Animate().custom(
                duration: 3000.ms,
                begin: 0,
                end: double.parse(number),
                builder: (context, value, child) => Text(
                  value.toInt().toString(),
                  style: context.theme.textTheme.displayMedium?.copyWith(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                context.localizations.offers,
                style: context.theme.textTheme.titleSmall?.copyWith(
                  color: textColor,
                ),
              ),
            ],
          ),
        ).animate().then(delay: 1400.milliseconds).scaleXY(
              duration: 1000.milliseconds,
              curve: Curves.easeInOut,
            ),
      ),
    );
  }
}
