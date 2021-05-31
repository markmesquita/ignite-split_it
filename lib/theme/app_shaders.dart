import 'package:flutter/material.dart';

abstract class AppShaders {
  Shader get loginTitle;
}

class AppShadersDefault implements AppShaders {
  @override
  get loginTitle => LinearGradient(
        colors: [
          Color(0xFF40B28C),
          Color(0xFF45CC93),
        ],
      ).createShader(
        Rect.fromLTWH(0.0, 0.0, 250.0, 70.0),
      );
}
