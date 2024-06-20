import 'package:assignment/src/config/config.dart';
import 'package:assignment/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TopSearchBar extends StatelessWidget {
  const TopSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 56.0, left: 32, right: 32),
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  color: Colors.white,
                ),
                child: TextFormField(
                  initialValue: 'Saint Petersburg',
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      height: 24,
                      width: 24,
                      alignment: Alignment.center,
                      child: Image.asset(
                        AppIcons.search,
                        color: AppDesignColors.grey,
                        height: 24,
                        width: 24,
                      ),
                    ),
                    hintText: context.localizations.search,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ).animate(delay: 2.seconds).scaleXY(
                  duration: 500.milliseconds,
                  curve: Curves.easeInOut,
                ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 48,
                width: 48,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    AppIcons.filters,
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ).animate(delay: 2.seconds).scaleXY(
                  duration: 500.milliseconds,
                  curve: Curves.easeInOut,
                ),
          ],
        ),
      ),
    );
  }
}
