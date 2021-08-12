import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widget/step_input_text_widget.dart';
import 'package:split_it/modules/create_split/widget/step_title_widget.dart';

class StepOnePage extends StatefulWidget {
  final void Function(String value) onChange;
  const StepOnePage({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  _StepOnePageState createState() => _StepOnePageState();
}

class _StepOnePageState extends State<StepOnePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(title: "Qual é o nome", subtitle: "do evento?"),
        StepInputTextWidget(
            onChange: widget.onChange, hintText: "Ex.: Churrasco"),
      ],
    );
  }
}
