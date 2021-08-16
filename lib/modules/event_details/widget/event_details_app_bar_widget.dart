import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class EventDetailsAppBarWidget extends PreferredSize {
  final VoidCallback onTap;
  EventDetailsAppBarWidget(
    this.onTap,
  ) : super(
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: IconButton(
                    onPressed: onTap,
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppTheme.colors.backButton,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Text(
                    "Churrasco",
                    style: AppTheme.textStyles.stepTitle,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(60),
        );
}
