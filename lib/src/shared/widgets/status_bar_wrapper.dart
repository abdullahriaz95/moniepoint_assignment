import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarWrapper extends StatelessWidget {
  const StatusBarWrapper({
    super.key,
    required this.child,
    this.reversed = false,
  });

  final Widget child;
  final bool reversed;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: reversed
            ? Brightness.dark
            : Brightness.light, // For Android (dark icons)
        statusBarBrightness: reversed
            ? Brightness.light
            : Brightness.dark, // For iOS (dark icons)
      ),
      child: child,
    );
  }
}
