import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:split_it/modules/home/widgets/loading_widget.dart';

import 'package:split_it/theme/app_theme.dart';

class InfoCardWidget extends StatelessWidget {
  final double price;
  final bool isLoading;

  InfoCardWidget({
    Key? key,
    required this.price,
    this.isLoading = false,
  }) : super(key: key);

  TextStyle get priceStyle => price >= 0
      ? AppTheme.textStyles.cardPriceGreen
      : AppTheme.textStyles.cardPriceRed;

  IconDollarType get type =>
      price >= 0 ? IconDollarType.receive : IconDollarType.send;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
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
            IconDollarWidget(type: type),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  price >= 0 ? "A receber" : "A pagar",
                  style: AppTheme.textStyles.cardLabel,
                ),
                if (isLoading) ...[
                  LoadingWidget(size: Size(98, 24)),
                ] else ...[
                  Text(
                    "R\$ ${(price >= 0 ? price : price * -1).toStringAsFixed(2)}",
                    style: priceStyle,
                  ),
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }
}
