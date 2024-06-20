import 'dart:ui' as ui;

import 'package:assignment/src/config/config.dart';
import 'package:assignment/src/shared/extensions/extensions.dart';
import 'package:assignment/src/shared/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EstateTile extends HookWidget {
  const EstateTile({
    required this.estate,
    super.key,
  });

  final RealEstateModel estate;

  @override
  Widget build(BuildContext context) {
    final expand = useState(false);

    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(estate.image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ui.ImageFilter.blur(
                        sigmaX: 5.0,
                        sigmaY: 5.0,
                      ),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                        width: expand.value ? constraints.maxWidth : 60,
                        decoration: BoxDecoration(
                          color: AppDesignColors.beige.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(160),
                        ),
                        height: 50,
                        padding: const EdgeInsets.all(4),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  estate.name,
                                  style: context.theme.textTheme.titleLarge!
                                      .copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                                .animate(delay: 4000.milliseconds)
                                .fadeIn(duration: 500.milliseconds),
                            const _Thumb()
                          ],
                        ),
                      )
                          .animate(
                            delay: 3000.milliseconds,
                            onComplete: (_) {
                              expand.value = true;
                            },
                          )
                          .scaleXY(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _Thumb extends StatelessWidget {
  const _Thumb();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          color: AppDesignColors.white,
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Icon(Icons.chevron_right_outlined),
        ),
      ),
    );
  }
}
