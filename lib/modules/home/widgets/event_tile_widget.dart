import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:split_it/modules/home/widgets/loading_widget.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/theme/app_theme.dart';

import 'icon_dollar_widget.dart';

class EventTileWidget extends StatelessWidget {
  final EventModel model;
  final bool isLoading;

  const EventTileWidget({
    Key? key,
    required this.model,
    this.isLoading = false,
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
        if (isLoading) ...[
          LoadingWidget(size: Size(48, 48)),
        ] else ...[
          IconDollarWidget(type: type),
        ],
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: isLoading
                      ? LoadingWidget(size: Size(81, 19))
                      : Text(
                          model.title,
                          style: AppTheme.textStyles.titleTile,
                        ),
                  subtitle: isLoading
                      ? LoadingWidget(size: Size(52, 18))
                      : Text(
                          DateFormat('dd.MM.yyyy').format(model.created),
                          style: AppTheme.textStyles.subtitleTile,
                        ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (isLoading) ...[
                        LoadingWidget(size: Size(61, 17)),
                      ] else ...[
                        Text(
                          "R\$ ${(model.value >= 0 ? model.value : model.value * -1).toStringAsFixed(2)}",
                          style: AppTheme.textStyles.valueTile,
                        ),
                      ],
                      SizedBox(
                        height: 5,
                      ),
                      if (isLoading) ...[
                        LoadingWidget(size: Size(44, 18)),
                      ] else ...[
                        Text(
                          "${model.people} pessoa${model.people > 1 ? "s" : ""}",
                          style: AppTheme.textStyles.peopleTile,
                        ),
                      ],
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
