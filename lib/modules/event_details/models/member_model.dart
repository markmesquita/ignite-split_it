import 'package:flutter/material.dart';

class MemberModel {
  Image? picture;
  String name;
  double value;
  bool isChecked;
  MemberModel({
    this.picture,
    required this.name,
    required this.value,
    this.isChecked = false,
  });
}
