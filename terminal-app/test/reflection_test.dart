import 'dart:mirrors';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_remote_control_terminal/main.dart';

void main() {

    var c = reflect(o).type;
    while (c != null) {
      var m = c.mixin;
      if (c != m && m.simpleName == new Symbol(mixinName)) return true;
      c = c.superclass;
    }

}
