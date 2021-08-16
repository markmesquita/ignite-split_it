import 'package:flutter/material.dart';

import 'package:split_it/modules/event_details/models/item_model.dart';
import 'package:split_it/theme/app_theme.dart';

class ItemsListWidget extends StatelessWidget {
  final List<ItemModel> itens;
  const ItemsListWidget({
    Key? key,
    required this.itens,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "ITENS",
                  style: AppTheme.textStyles.categoryName,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 2,
          color: AppTheme.colors.backgroundEventDetails,
        ),
        ...itens.map((item) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ListTile(
                title: Text(
                  item.name,
                  style: AppTheme.textStyles.itemBoldEvent,
                ),
                trailing: Text.rich(
                  TextSpan(
                      text: "R\$ ",
                      style: AppTheme.textStyles.itemEvent,
                      children: [
                        TextSpan(
                            text: "${(item.value).toStringAsFixed(2)}",
                            style: AppTheme.textStyles.itemBoldEvent)
                      ]),
                ),
              ),
            ))
      ],
    );
  }
}
