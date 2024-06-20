part of 'theme.dart';

class AppDesignColors {
  static const Color yellow = Color(0xFFFC9D11);

  static const Color grey = Color(0xFF2B2B2B);

  static const Color darkGrey = Color(0xFF232220);

  static const Color beige = Color(0xFFA4957E);

  static const Color white = Color(0xFFFFFFFF);

  static const Color black = Color(0xFF000000);

  static const Color alto = Color(0xFFDEDEDE);

  static const Color blackText = Color(0xFF1A1A1A);

  static const Color greyText = Color(0xFF828282);

  static const Color red = Color(0xFF871B00);

  static const Color lightRed = Color(0xFFFFE7E1);

  static const Color lightBackground = Color(0xFFF8F8F8);
}

/// The [AppColorScheme] is the main light color scheme for the app.
///
class AppLightColorScheme extends AppColorScheme {
  @override
  Color get primary => AppDesignColors.yellow;

  @override
  Color get onPrimary => AppDesignColors.white;

  @override
  Color get secondary => AppDesignColors.darkGrey;

  @override
  Color get onSecondary => AppDesignColors.white;

  @override
  Color get background => AppDesignColors.white;

  @override
  Color get onBackground => AppDesignColors.black;

  @override
  Color get surface => AppDesignColors.lightBackground;

  @override
  Color get onSurface => AppDesignColors.black;

  @override
  Color get error => AppDesignColors.red;

  @override
  Color get onError => AppDesignColors.white;

  @override
  Color get divider => AppDesignColors.alto;
}
