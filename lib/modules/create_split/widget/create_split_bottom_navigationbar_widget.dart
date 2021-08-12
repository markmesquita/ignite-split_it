import 'package:flutter/material.dart';

import 'package:split_it/modules/create_split/widget/stepper_button_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitBottomNavigationBarWidget extends StatelessWidget {
  final VoidCallback onTapCancel;
  final String labelCancel;
  final VoidCallback onTapContinue;
  final String labelContinue;
  final bool enabledButton;
  const CreateSplitBottomNavigationBarWidget({
    Key? key,
    required this.onTapCancel,
    required this.labelCancel,
    required this.onTapContinue,
    required this.labelContinue,
    this.enabledButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 1,
                color: AppTheme.colors.divider,
              ))
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StepperButtonWidget(
                  enabled: enabledButton,
                  label: labelCancel,
                  onTap: onTapCancel),
              Container(
                width: 1,
                height: 56,
                color: AppTheme.colors.divider,
              ),
              StepperButtonWidget(
                  enabled: enabledButton,
                  label: labelContinue,
                  onTap: onTapContinue),
            ],
          ),
        ],
      ),
    );
  }
}
