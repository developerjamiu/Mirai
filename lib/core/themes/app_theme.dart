import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static const _black = Color(0xFf343434);
  static const _white = Colors.white;
  static const _red = Colors.red;

  static const _primaryColor = Color(0xFF47BF90);
  static const _primaryVariantColor = Color(0xFFBBE7D6);

  static const _secondaryColor = _white;
  static const _secondaryVariantColor = Color(0xFF979797);

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static final ColorScheme _lightColorScheme = ColorScheme(
    primary: _primaryColor,
    primaryVariant: _primaryVariantColor,
    secondary: _secondaryColor,
    secondaryVariant: _secondaryVariantColor,
    surface: _secondaryVariantColor,
    error: _red,
    onSecondary: _primaryColor,
    onBackground: _primaryColor,
    onSurface: _primaryColor,
    background: _white,
    onError: _white,
    onPrimary: _black,
    brightness: Brightness.light,
  );

  static final ColorScheme _darkColorScheme = _lightColorScheme.copyWith(
    background: _black,
    onError: _black,
    onPrimary: _white,
    brightness: Brightness.dark,
  );

  static ThemeData lightThemeData = _themeData(
    _lightColorScheme,
    _lightFocusColor,
    _lightTextTheme,
    _lightButtonTheme,
  );
  static ThemeData darkThemeData = _themeData(
    _darkColorScheme,
    _darkFocusColor,
    _darkTextTheme,
    _darkButtonTheme,
  );

  static ThemeData _themeData(
    ColorScheme colorScheme,
    Color focusColor,
    TextTheme textTheme,
    ButtonThemeData buttonTheme,
  ) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      backgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      primaryColor: colorScheme.primary,
      primaryColorBrightness: Brightness.light,
      accentColor: colorScheme.secondary,
      focusColor: focusColor,
      buttonColor: colorScheme.primary,
      errorColor: colorScheme.error,
      buttonTheme: buttonTheme,
    );
  }

  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;

  static final TextTheme _lightTextTheme = TextTheme(
    headline3: GoogleFonts.montserrat(
      fontWeight: _bold,
      fontSize: 20.0,
      color: _black,
    ),
    headline4: GoogleFonts.montserrat(
      fontWeight: _bold,
      fontSize: 18.0,
      color: _primaryColor,
    ),
    headline5: GoogleFonts.montserrat(
      fontWeight: _bold,
      fontSize: 16.0,
      color: _primaryColor,
    ),
    headline6: GoogleFonts.montserrat(
      fontWeight: _bold,
      fontSize: 16.0,
      color: _primaryVariantColor,
    ),
    button: GoogleFonts.montserrat(
      fontWeight: _regular,
      fontSize: 14.0,
      color: _white,
    ),
    bodyText1: GoogleFonts.montserrat(
      fontWeight: _regular,
      fontSize: 14.0,
      color: _black,
    ),
    bodyText2: GoogleFonts.montserrat(
      fontWeight: _regular,
      fontSize: 14.0,
      color: _secondaryVariantColor,
    ),
    caption: GoogleFonts.montserrat(
      fontWeight: _bold,
      fontSize: 14.0,
      color: _black,
    ),
  );

  static final TextTheme _darkTextTheme = TextTheme(
    headline3: GoogleFonts.montserrat(
      fontWeight: _bold,
      fontSize: 20.0,
      color: _white,
    ),
    headline4: GoogleFonts.montserrat(
      fontWeight: _bold,
      fontSize: 18.0,
      color: _primaryColor,
    ),
    headline5: GoogleFonts.montserrat(
      fontWeight: _bold,
      fontSize: 16.0,
      color: _primaryColor,
    ),
    headline6: GoogleFonts.montserrat(
      fontWeight: _bold,
      fontSize: 16.0,
      color: _primaryVariantColor,
    ),
    button: GoogleFonts.montserrat(
      fontWeight: _semiBold,
      fontSize: 16.0,
      color: _primaryColor,
    ),
    bodyText1: GoogleFonts.montserrat(
      fontWeight: _regular,
      fontSize: 14.0,
      color: _white,
    ),
    bodyText2: GoogleFonts.montserrat(
      fontWeight: _regular,
      fontSize: 14.0,
      color: _secondaryVariantColor,
    ),
    caption: GoogleFonts.montserrat(
      fontWeight: _bold,
      fontSize: 14.0,
      color: _white,
    ),
  );

  static final ButtonThemeData _lightButtonTheme = ButtonThemeData(
    colorScheme: _lightColorScheme,
    textTheme: ButtonTextTheme.accent,
    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
  );

  static final ButtonThemeData _darkButtonTheme = _lightButtonTheme.copyWith(
    colorScheme: _darkColorScheme,
  );
}
