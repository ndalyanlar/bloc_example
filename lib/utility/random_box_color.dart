import 'package:flutter/material.dart';

import 'dart:math' as math;

class RandomColor {
  Color get getColor {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(1.0);
  }
}
