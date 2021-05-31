import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class CardWidget extends StatelessWidget {
  final String icon;
  final String label;
  final String price;
  final String textColor;

  CardWidget({
    Key? key,
    required this.icon,
    required this.label,
    required this.price,
    required this.textColor,
  })  : assert(["Red", "Green"].contains(textColor)),
        super(key: key);

  final config = {
    "Green": {
      "iconBackgroundColor": AppTheme.colors.cardIconGreen,
    },
    "Red": {
      "iconBackgroundColor": AppTheme.colors.cardIconRed,
    },
  };
  final configTextStyle = {
    "Green": {
      "priceStyle": AppTheme.textStyles.cardPriceGreen,
    },
    "Red": {
      "priceStyle": AppTheme.textStyles.cardPriceRed,
    },
  };

  Color get iconBackgroundColor => config[textColor]!["iconBackgroundColor"]!;
  TextStyle get priceStyle => configTextStyle[textColor]!["priceStyle"]!;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 168,
      decoration: BoxDecoration(
        color: AppTheme.colors.backgroundPrimary,
        border:
            Border.fromBorderSide(BorderSide(color: AppTheme.colors.border)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: iconBackgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(icon),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: AppTheme.textStyles.cardLabel,
                  ),
                  Text(
                    price,
                    style: priceStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
