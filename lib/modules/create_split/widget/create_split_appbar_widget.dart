import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitAppBarWidget extends PreferredSize {
  final VoidCallback onTap;
  final int currentPage;
  final int totalPage;
  CreateSplitAppBarWidget(
    this.onTap,
    this.currentPage,
    this.totalPage,
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
                  child: Text.rich(
                    TextSpan(
                      text: "0$currentPage",
                      style: AppTheme.textStyles.stepperIndicatorPrimary,
                      children: [
                        TextSpan(
                          text: " - 0$totalPage",
                          style: AppTheme.textStyles.stepperIndicatorSecondary,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(60),
        );
}
