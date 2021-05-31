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
  Color get cardIconGreen => Color(0x5540B28C);

  @override
  Color get cardIconRed => Color(0x55E83F5B);

  @override
  Color get cardTextGreen => Color(0xFF40B28C);

  @override
  Color get cardTextRed => Color(0xFFE83F5B);
}
