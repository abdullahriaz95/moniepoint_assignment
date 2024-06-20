part of 'theme.dart';

/// Generic class for the app's color scheme.
/// We have two color schemes: light and dark.
/// The [AppLightColorScheme] color scheme is the default color scheme for the app.
abstract class AppColorScheme {
  Color get primary;
  Color get onPrimary;
  Color get secondary;
  Color get onSecondary;
  Color get background;
  Color get onBackground;
  Color get surface;
  Color get onSurface;
  Color get error;
  Color get onError;
  Color get divider;
}
