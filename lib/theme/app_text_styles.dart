import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get homeTitle;
  TextStyle get button;
  TextStyle get cardLabel;
  TextStyle get cardPriceGreen;
  TextStyle get cardPriceRed;
}

class AppTextStyleDefault implements AppTextStyles {
  @override
  TextStyle get title => GoogleFonts.montserrat(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        // color: AppTheme.colors.titleLogin,
        foreground: Paint()..shader = AppTheme.shaders.loginTitle,
      );

  @override
  TextStyle get button => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.buttonLogin,
      );

  @override
  TextStyle get homeTitle => GoogleFonts.montserrat(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.backgroundPrimary,
      );

  @override
  TextStyle get cardLabel => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.buttonLogin,
      );

  @override
  TextStyle get cardPriceGreen => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.cardTextGreen,
      );
  TextStyle get cardPriceRed => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.cardTextRed,
      );
}
