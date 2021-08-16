import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class PersonTileWidget extends StatefulWidget {
  final String name;
  final bool isRemoved;
  final double value;
  final bool isChecked;
  const PersonTileWidget({
    Key? key,
    required this.name,
    this.isRemoved = false,
    this.value = 0,
    this.isChecked = false,
  }) : super(key: key);

  @override
  _PersonTileWidgetState createState() => _PersonTileWidgetState();
}

class _PersonTileWidgetState extends State<PersonTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey.shade200),
        child: Container(),
      ),
      title: Text(
        widget.name,
        style: widget.isRemoved
            ? AppTheme.textStyles.personNameAdded
            : AppTheme.textStyles.personName,
      ),
      subtitle: Text(
        widget.value != 0
            ? "R\$ ${(widget.value > 0 ? widget.value : widget.value * -1).toStringAsFixed(2)}"
            : "",
        style: widget.value > 0
            ? AppTheme.textStyles.creditValue
            : AppTheme.textStyles.discountValue,
      ),
      trailing: widget.value != 0
          ? Container(
              child: Checkbox(
                value: widget.isChecked,
                onChanged: (value) {},
              ),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: widget.isChecked
                      ? AppTheme.colors.marginColorCheckboxActive
                      : AppTheme.colors.marginColorCheckbox),
            )
          : IconButton(
              icon: widget.isRemoved
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
