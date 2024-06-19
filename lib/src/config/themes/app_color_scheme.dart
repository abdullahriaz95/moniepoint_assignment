part of 'theme.dart';

class AppDesignColors {
  static const Color biscay = Color(0xFF203169);

  static const Color bigStone = Color(0xFF161D37);

  static const Color linkWater = Color(0xFFECF0FA);

  static const Color gallery = Color(0xFFECECEC);

  static const Color persionBlue = Color(0xFF183DBC);

  static const Color greyNurse = Color(0xFFF5F6F5);

  static const Color white = Color(0xFFFFFFFF);

  static const Color black = Color(0xFF000000);

  static const Color wellRead = Color(0xFFA92D3E);

  static const Color alto = Color(0xFFDEDEDE);

  static const Color tuna = Color(0xFF3B3E42);

  static const Color maroon = Color(0xFF800000);

  static const Color blackText = Color(0xFF1A1A1A);

  static const Color greyText = Color(0xFF828282);

  static const Color claret = Color(0xFF8B1538);

  static const Color lightGrey = Color(0xFFD3D3D3);

  static const Color yellow = Color(0xFF7C5B00);

  static const Color lightYellow = Color(0xFFFFF7E1);

  static const Color red = Color(0xFF871B00);

  static const Color lightRed = Color(0xFFFFE7E1);

  static const Color lightGreyBackground = Color(0xFFFAFAFA);
}

class AppLightColorScheme extends AppColorScheme {
  @override
  Color get primary => AppDesignColors.biscay;

  @override
  Color get onPrimary => AppDesignColors.white;

  @override
  Color get secondary => AppDesignColors.persionBlue;

  @override
  Color get onSecondary => AppDesignColors.white;

  @override
  Color get background => AppDesignColors.white;

  @override
  Color get onBackground => AppDesignColors.black;

  @override
  Color get surface => AppDesignColors.lightGreyBackground;

  @override
  Color get onSurface => AppDesignColors.black;

  @override
  Color get error => AppDesignColors.wellRead;

  @override
  Color get onError => AppDesignColors.white;

  @override
  Color get divider => AppDesignColors.alto;
}
