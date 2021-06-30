import 'dart:io';

import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_controller.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';

import '../info_card_widget.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({Key? key}) : super(key: key);

  @override
  _BottomAppBarWidgetState createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  final controller = AppBarController();

  @override
  void initState() {
    controller.getDashboard(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (controller.state.runtimeType) {
      case AppBarStateLoading:
        {
          return CircularProgressIndicator();
        }
      case AppBarStateSuccess:
        {
          final dashboard = (controller.state as AppBarStateSuccess).dashboard;
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: Platform.isAndroid
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.spaceAround,
            children: [
              InfoCardWidget(
                price: dashboard.receive,
              ),
              InfoCardWidget(
                price: -dashboard.send,
              ),
            ],
          );
        }
      case AppBarStateFailure:
        {
          final message = (controller.state as AppBarStateFailure).message;
          return Text(message);
        }
      default:
        {
          return Container();
        }
    }
  }
}
