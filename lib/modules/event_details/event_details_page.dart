import 'package:flutter/material.dart';
import 'package:split_it/modules/event_details/models/item_model.dart';
import 'package:split_it/modules/event_details/models/member_model.dart';
import 'package:split_it/modules/event_details/widget/event_details_app_bar_widget.dart';
import 'package:split_it/modules/event_details/widget/items_list_widget.dart';
import 'package:split_it/modules/event_details/widget/members_list_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class EventDetailsPage extends StatefulWidget {
  const EventDetailsPage({Key? key}) : super(key: key);

  @override
  _EventDetailsPageState createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EventDetailsAppBarWidget(() => Navigator.pop(context)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 8,
              decoration: BoxDecoration(
                color: AppTheme.colors.backgroundEventDetails,
              ),
            ),
            MembersListWidget(
              members: [
                MemberModel(name: "Você", value: 126.00, isChecked: true),
                MemberModel(name: "Maria Antônia", value: -126.00)
              ],
            ),
            Container(
              width: double.maxFinite,
              height: 8,
              decoration: BoxDecoration(
                color: AppTheme.colors.backgroundEventDetails,
              ),
            ),
            ItemsListWidget(
              itens: [
                ItemModel(name: "Picanha", value: 122.00),
                ItemModel(name: "Linguicinha", value: 17.00),
                ItemModel(name: "Carvão", value: 19.00),
                ItemModel(name: "Cerveja", value: 68.00),
                ItemModel(name: "Refrigerante", value: 12.00),
                ItemModel(name: "Pão de alho", value: 15.00),
              ],
            ),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppTheme.colors.backgroundEventDetails,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: ListTile(
                  title: Text(
                    "Total",
                    style: AppTheme.textStyles.totalEvent,
                  ),
                  trailing: Text.rich(
                    TextSpan(
                      text: "R\$ ",
                      style: AppTheme.textStyles.itemEvent,
                      children: [
                        TextSpan(
                            text: "${(252).toStringAsFixed(2)}",
                            style: AppTheme.textStyles.totalEvent),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ListTile(
                trailing: Text.rich(TextSpan(
                    text: "Faltam R\$ ",
                    style: AppTheme.textStyles.discountBottomValue,
                    children: [
                      TextSpan(
                        text: "${(252).toStringAsFixed(2)}",
                        style: AppTheme.textStyles.discountBoldBottomValue,
                      )
                    ])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
