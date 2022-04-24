import 'package:flutter/material.dart';

/// fonts
String primaryFontFamily = "OpenSans";

/// colors
Color primaryColor = Colors.white;

/// styles
TextStyle onboardTitleTextStyle = TextStyle(
  fontSize: 24,
  color: Colors.black,
  fontFamily: primaryFontFamily,
  fontWeight: FontWeight.w800,
);

TextStyle onboardSubtitleTextStyle = TextStyle(
  fontSize: 18,
  color: Colors.black,
  fontFamily: primaryFontFamily,
  fontWeight: FontWeight.w600,
);

OutlineInputBorder telegramCodeSubmitBorder = const OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.transparent,
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(25.0),
  ),
);
