import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/steps/one/step_one_page.dart';
import 'package:split_it/modules/create_split/steps/three/step_three_page.dart';
import 'package:split_it/modules/create_split/steps/two/step_two_page.dart';
import 'package:split_it/modules/create_split/widget/create_split_appbar_widget.dart';
import 'package:split_it/modules/create_split/widget/create_split_bottom_navigationbar_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final controller = CreateSplitController();

  late List<Widget> pages;

  @override
  void initState() {
    pages = [
      StepOnePage(onChange: (value) {
        controller.setEventName(value);
        setState(() {});
      }),
      StepTwoPage(onChange: (value) {
        controller.setEventName(value);
        setState(() {});
      }),
      StepThreePage(
        onChange: (value) {
          controller.setEventName(value);
          setState(() {});
        },
      )
    ];
    super.initState();
  }

  var index = 0;

  void nextPage() {
    if (index < 2) {
      index++;
      setState(() {});
    }
  }

  void backPage() {
    if (index > 0) {
      index--;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.colors.backgroundPrimary,
        appBar: PreferredSize(
          child: CreateSplitAppBarWidget(backPage, index + 1, pages.length),
          preferredSize: Size.fromHeight(60),
        ),
        body: pages[index],
        bottomNavigationBar: SafeArea(
          child: CreateSplitBottomNavigationBarWidget(
              enabledButton: controller.enableNavigateButton(),
              onTapCancel: () {},
              labelCancel: "CANCELAR",
              onTapContinue: () {
                nextPage();
              },
              labelContinue: "CONTINUAR"),
        ));
  }
}
