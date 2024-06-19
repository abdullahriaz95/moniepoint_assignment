part of 'theme.dart';

ThemeData lightTheme({required AppColorScheme colorScheme}) {
  return ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: colorScheme.primary,
      onPrimary: colorScheme.onPrimary,
      secondary: colorScheme.secondary,
      onSecondary: colorScheme.onSecondary,
      error: colorScheme.error,
      onError: colorScheme.onError,
      background: colorScheme.background,
      onBackground: colorScheme.onBackground,
      surface: colorScheme.surface,
      onSurface: colorScheme.onSurface,
    ),
    dividerColor: colorScheme.divider,
  );
}
