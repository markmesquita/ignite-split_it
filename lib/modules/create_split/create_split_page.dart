import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final pages = [
    Container(
      color: Colors.red,
      child: Center(
        child: Text('Create Split Page'),
      ),
    ),
    Container(
      color: Colors.blue,
      child: Center(
        child: Text('Create Split Page'),
      ),
    ),
    Container(
      color: Colors.green,
      child: Center(
        child: Text('Create Split Page'),
      ),
    ),
  ];

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
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: IconButton(
                  onPressed: backPage,
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
                    text: "0${index + 1}",
                    style: AppTheme.textStyles.stepperIndicatorPrimary,
                    children: [
                      TextSpan(
                        text: " - 0${pages.length}",
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
      ),
      body: pages[index],
      floatingActionButton: index == 2
          ? Container()
          : IconButton(
              onPressed: nextPage,
              icon: Icon(Icons.arrow_forward),
            ),
    );
  }
}
