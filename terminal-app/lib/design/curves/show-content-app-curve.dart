

import 'package:flutter/material.dart';

class ShowContentAppCurve extends Curve {
  @override
  double transformInternal(double t) {
    return t < 0.8 ? 0.8 : t;
  }
}