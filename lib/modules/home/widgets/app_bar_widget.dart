import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/card_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  AppBarWidget({
    required this.user,
  }) : super(
            preferredSize: Size.fromHeight(280),
            child: Container(
              height: 500,
              child: Stack(
                children: [
                  Container(
                    height: 214,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    decoration:
                        BoxDecoration(gradient: AppTheme.gradients.background),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: 58,
                                    height: 58,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: NetworkImage(user.photoUrl!),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    user.name!.split(" ")[0],
                                    style: AppTheme.textStyles.homeTitle,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 48,
                              height: 56,
                              decoration: BoxDecoration(
                                border: Border.fromBorderSide(
                                  BorderSide(
                                    color: AppTheme.colors.backgroundPrimary,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: AppTheme.colors.backgroundPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.0, 1.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CardWidget(
                            icon: 'assets/images/dollar-receive-arrow.png',
                            label: 'A receber',
                            price: 'R\$ 124,00',
                            textColor: 'Green',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CardWidget(
                            icon: 'assets/images/dollar-send-arrow.png',
                            label: 'A pagar',
                            price: 'R\$ 48,00',
                            textColor: 'Red',
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
}
