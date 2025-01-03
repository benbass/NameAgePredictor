import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppTheme {
  AppTheme._();

  static const Color _primaryColor = Color(0xFFCBD4C2);
  static const Color _primaryVariantColor = Color(0xFF202531);
  static const Color _onPrimaryColor = Color(0xFF006EB8);

  static const Color _appbarColor = Color(0xFF202531);
  static const Color _textColor = Color(0xFFCBD4C2);
  static const Color _iconColor = Color(0xFF66C3FF);
  static const Color _accentColor = Color(0xFF66C3FF);

  // https://fonts.google.com/specimen/Roboto+Mono
  static final TextStyle _headingText = TextStyle(
    color: _textColor,
    fontFamily: "Roboto Mono",
    fontSize: 16.sp,
    fontVariations: <FontVariation>[
      FontVariation('wght', 600),
    ],
  );

  static final TextStyle _bodyTextLarge = TextStyle(
    color: _textColor,
    fontFamily: "Roboto Mono",
    fontSize: 17.sp,
    fontVariations: <FontVariation>[
      FontVariation('wght', 450),
    ],
  );

  static final TextStyle _bodyTextMedium = _bodyTextLarge.copyWith(
    fontSize: 15.sp,
  );

  static final TextStyle _bodyTextSmall = _bodyTextLarge.copyWith(
    fontSize: 14.sp,
  );

  static final TextStyle _displayMediumText = _bodyTextMedium.copyWith(
    color: _primaryVariantColor,
  );

  static final TextStyle _appBarText = _headingText.copyWith(
    fontSize: 18.sp,
  );

  static final TextTheme _textTheme = TextTheme(
      displayLarge: _headingText,
      displayMedium: _displayMediumText,
      bodyLarge: _bodyTextLarge,
      bodyMedium: _bodyTextMedium,
      bodySmall: _bodyTextSmall);

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: _primaryVariantColor,
    appBarTheme: AppBarTheme(
      //color: _appbarColor,
      titleTextStyle: _appBarText,
      iconTheme: const IconThemeData(
        color: _iconColor,
      ),
      backgroundColor: _appbarColor,
      toolbarHeight: 60,
      elevation: 0,
      scrolledUnderElevation: 0,
      shadowColor: _primaryVariantColor,
    ),
    colorScheme: const ColorScheme.light(
      primary: _primaryColor,
      onPrimary: _onPrimaryColor,
      secondary: _accentColor,
      primaryContainer: _primaryVariantColor,
    ),
    textTheme: _textTheme,
    buttonTheme: const ButtonThemeData(
      buttonColor: _accentColor,
    ),
    iconTheme: const IconThemeData(
      color: _iconColor,
    ),
    snackBarTheme: SnackBarThemeData(
      showCloseIcon: true,
      closeIconColor: _primaryVariantColor,
      elevation: 30.0,
      behavior: SnackBarBehavior.floating,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      backgroundColor: _accentColor,
      contentTextStyle: _bodyTextLarge.copyWith(
        color: _primaryVariantColor,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: _bodyTextMedium.copyWith(color: _primaryVariantColor),
      labelStyle: _bodyTextSmall,
      filled: true,
      fillColor: _primaryColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      errorStyle: TextStyle(
        color: _accentColor,
      ),
    )
  );
}
