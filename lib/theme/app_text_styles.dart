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
  TextStyle get titleTile;
  TextStyle get subtitleTile;
  TextStyle get valueTile;
  TextStyle get peopleTile;
  TextStyle get stepperIndicatorPrimary;
  TextStyle get stepperIndicatorSecondary;
  TextStyle get stepperNextButton;
  TextStyle get stepperNextButtonDisabled;
  TextStyle get stepTitle;
  TextStyle get stepSubTitle;
  TextStyle get hintTextField;
  TextStyle get textField;
  TextStyle get personName;
  TextStyle get personNameAdded;
  TextStyle get categoryName;
  TextStyle get creditValue;
  TextStyle get discountValue;
  TextStyle get itemEvent;
  TextStyle get itemBoldEvent;
  TextStyle get totalEvent;
  TextStyle get discountBottomValue;
  TextStyle get discountBoldBottomValue;
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

  @override
  TextStyle get subtitleTile => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.subtitleTile,
      );

  @override
  TextStyle get titleTile => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.titleTile,
      );

  @override
  TextStyle get valueTile => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.valueTile,
      );

  @override
  TextStyle get peopleTile => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.peopleTile,
      );

  @override
  TextStyle get stepperIndicatorPrimary => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.stepperIndicatorPrimary,
      );

  @override
  TextStyle get stepperIndicatorSecondary => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.stepperIndicatorSecondary,
      );

  @override
  TextStyle get stepperNextButton => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.stepperNextButton,
      );

  @override
  TextStyle get stepSubTitle => GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.stepSubTitle,
      );

  @override
  TextStyle get stepTitle => GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.stepTitle,
      );

  @override
  TextStyle get hintTextField => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.hintTextField,
      );

  @override
  TextStyle get textField => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.textField,
      );

  @override
  TextStyle get stepperNextButtonDisabled => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.stepperNextButtonDisabled,
      );

  @override
  TextStyle get personName => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.personName,
      );

  @override
  TextStyle get personNameAdded => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppTheme.colors.personNameAdded,
      );

  @override
  TextStyle get categoryName => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.categoryName,
      );

  @override
  TextStyle get creditValue => GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.creditValue,
      );

  @override
  TextStyle get discountValue => GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.discountValue,
      );

  @override
  TextStyle get itemBoldEvent => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.itemsEvent,
      );

  @override
  TextStyle get itemEvent => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.itemsEvent,
      );

  @override
  TextStyle get totalEvent => GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.itemsEvent,
      );

  @override
  TextStyle get discountBottomValue => GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.discountValue,
      );

  @override
  TextStyle get discountBoldBottomValue => GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.discountValue,
      );
}
