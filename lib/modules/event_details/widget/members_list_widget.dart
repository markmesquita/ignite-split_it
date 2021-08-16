import 'package:flutter/material.dart';

import 'package:split_it/modules/event_details/models/member_model.dart';
import 'package:split_it/shared/widgets/person_tile_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class MembersListWidget extends StatelessWidget {
  final List<MemberModel> members;
  const MembersListWidget({
    Key? key,
    required this.members,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Text(
                  "INTEGRANTES",
                  style: AppTheme.textStyles.categoryName,
                ),
              ],
            ),
          ),
          ...members.map((member) => PersonTileWidget(
                name: member.name,
                value: member.value,
                isChecked: member.isChecked,
              )),
        ],
      ),
    );
  }
}
