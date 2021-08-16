import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widget/step_input_text_widget.dart';
import 'package:split_it/modules/create_split/widget/step_title_widget.dart';
import 'package:split_it/shared/widgets/person_tile_widget.dart';

class StepTwoPage extends StatefulWidget {
  final void Function(String value) onChange;
  const StepTwoPage({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  _StepTwoPageState createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(title: "Com quem", subtitle: "você quer dividir?"),
        StepInputTextWidget(
            onChange: widget.onChange, hintText: "Nome da pessoa"),
        SizedBox(
          height: 35,
        ),
        PersonTileWidget(
          name: "Mark Mesquita",
          isRemoved: true,
        ),
        PersonTileWidget(name: "Mark 2"),
        PersonTileWidget(name: "Mark 3"),
      ],
    );
  }
}
