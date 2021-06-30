import 'package:flutter/material.dart';

import 'package:split_it/modules/home/widgets/add_button_widget.dart';
import 'package:split_it/modules/home/widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final VoidCallback onTapAddButton;
  AppBarWidget({
    required this.user,
    required this.onTapAddButton,
  }) : super(
            preferredSize: Size.fromHeight(300),
            child: Stack(
              children: [
                Container(
                  height: 220,
                  color: AppTheme.colors.backgroundSecondary,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 62, left: 16, right: 16),
                  child: Column(
                    children: [
                      ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            user.photoUrl!,
                            fit: BoxFit.cover,
                            width: 56,
                            height: 56,
                          ),
                        ),
                        title: Text(
                          user.name!.split(" ")[0],
                          style: AppTheme.textStyles.homeTitle,
                        ),
                        trailing: AddButtonWidget(
                          onTap: onTapAddButton,
                        ),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      BottomAppBarWidget(),
                    ],
                  ),
                ),
              ],
            ));
}
