import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class PersonTileWidget extends StatelessWidget {
  final String name;
  final bool isRemoved;
  const PersonTileWidget({
    Key? key,
    required this.name,
    this.isRemoved = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.grey.shade200),
      ),
      title: Text(
        name,
        style: isRemoved
            ? AppTheme.textStyles.personNameAdded
            : AppTheme.textStyles.personName,
      ),
      trailing: IconButton(
        icon: isRemoved
            ? Icon(
                Icons.remove,
                color: AppTheme.colors.cardIconRed,
              )
            : Icon(
                Icons.add,
                color: AppTheme.colors.cardIconGreen,
              ),
        onPressed: () {},
      ),
    );
  }
}
