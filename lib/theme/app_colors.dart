import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundPrimary;
  Color get backgroundSecondary;
  Color get titleLogin;
  Color get buttonLogin;
  Color get border;
  Color get cardIconGreen;
  Color get cardIconRed;
  Color get cardTextGreen;
  Color get cardTextRed;
  Color get iconAddButton;
  Color get titleTile;
  Color get subtitleTile;
  Color get valueTile;
  Color get peopleTile;
  Color get divider;
  Color get stepperIndicatorPrimary;
  Color get stepperIndicatorSecondary;
  Color get backButton;
}

class AppColorsDefault implements AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get titleLogin => Color(0xFF40B28C);

  @override
  Color get buttonLogin => Color(0xFF666666);

  @override
  Color get border => Color(0xFFDCE0E5);

  @override
  Color get cardIconGreen => Color(0xFF40B28C);

  @override
  Color get cardIconRed => Color(0xFFE83F5B);

  @override
  Color get cardTextGreen => Color(0xFF40B28C);

  @override
  Color get cardTextRed => Color(0xFFE83F5B);

  @override
  Color get iconAddButton => Color(0xFFF5F5F5);

  @override
  Color get titleTile => Color(0xFF455250);

  @override
  Color get subtitleTile => Color(0xFF666666);

  @override
  Color get valueTile => Color(0xFF666666);

  @override
  Color get peopleTile => Color(0xFFA4B2AE);

  @override
  Color get divider => Color(0xFF666666);

  @override
  Color get stepperIndicatorPrimary => Color(0xFF3CAB82);

  @override
  Color get stepperIndicatorSecondary => Color(0xFF666666);

  @override
  Color get backButton => Color(0xFF666666);
}
