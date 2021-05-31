import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBarWidget(user: user),
      body: Container(),
      // AppBar(
      //   leading: ClipRRect(
      //     borderRadius: BorderRadius.circular(8),
      //     child: Image.network(
      //       user.photoUrl!,
      //       fit: BoxFit.cover,
      //       width: 56,
      //       height: 56,
      //     ),
      //   ),
      //   title: Text(user.name!),
      // ),
    );
  }
}
