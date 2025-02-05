import 'package:flutter/material.dart';
// import 'dustid_colors.dart';

class DustidTextStyles{
  //headline textStyle
  static const TextStyle headline = TextStyle(
    fontFamily: 'ITC Souvenir Std',
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodyPrimary = TextStyle(
    fontFamily: 'ITC Souvenir Std',
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle buttonPrimary = TextStyle(
    fontFamily: 'ITC Souvenir Std',
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  ///secondary textStyle
  static const TextStyle subtitle = TextStyle(
    fontFamily: 'Basis Grotesque Pro',
    fontSize: 8,
    fontWeight: FontWeight.w700,
    letterSpacing:0.5,
  );

  static const TextStyle bodySecondary = TextStyle(
    fontFamily: 'Basis Grotesque Pro',
    fontSize: 8,
    fontWeight: FontWeight.normal,
    height: 1.4,
  );

  static const TextStyle buttonSecondary = TextStyle(
    fontFamily: 'Basis Grotesque Pro',
    fontSize: 15,
    fontWeight: FontWeight.w700, // Bold
    letterSpacing: 0.8,
  );
}