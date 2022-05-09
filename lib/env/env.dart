import 'package:flutter/material.dart';

/// fonts
String primaryFontFamily = "Ubuntu";

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
  fontSize: 19,
  color: Colors.black,
  fontFamily: primaryFontFamily,
  fontWeight: FontWeight.w400,
);

OutlineInputBorder telegramCodeSubmitBorder = const OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.transparent,
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(25.0),
  ),
);
