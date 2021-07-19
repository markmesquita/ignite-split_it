import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

enum IconDollarType { send, receive }

class IconDollarWidget extends StatelessWidget {
  final IconDollarType type;
  const IconDollarWidget({Key? key, required this.type}) : super(key: key);

  String get pathImage =>
      "assets/images/dollar-${type == IconDollarType.receive ? "receive" : "send"}-arrow.png";
  Color get background => type == IconDollarType.receive
      ? AppTheme.colors.cardIconGreen
      : AppTheme.colors.cardIconRed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: background.withOpacity(0.12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(
        pathImage,
      ),
    );
  }
}
