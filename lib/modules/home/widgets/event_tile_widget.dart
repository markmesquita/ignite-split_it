import 'package:flutter/material.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/theme/app_theme.dart';

import 'icon_dollar_widget.dart';

class EventTileWidget extends StatelessWidget {
  final EventModel model;

  const EventTileWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  String get pathImage =>
      "assets/images/dollar-${type == IconDollarType.receive ? "receive" : "send"}-arrow.png";
  Color get background => type == IconDollarType.receive
      ? AppTheme.colors.cardIconGreen
      : AppTheme.colors.cardIconRed;

  IconDollarType get type =>
      model.value >= 0 ? IconDollarType.receive : IconDollarType.send;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconDollarWidget(type: type),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    model.title,
                    style: AppTheme.textStyles.titleTile,
                  ),
                  subtitle: Text(
                    model.created.toIso8601String(),
                    style: AppTheme.textStyles.subtitleTile,
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "R\$ ${(model.value >= 0 ? model.value : model.value * -1).toStringAsFixed(2)}",
                        style: AppTheme.textStyles.valueTile,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${model.people} pessoa${model.people > 1 ? "s" : ""}",
                        style: AppTheme.textStyles.peopleTile,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: AppTheme.colors.divider,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
