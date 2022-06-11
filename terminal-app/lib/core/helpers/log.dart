

import 'package:flutter/cupertino.dart';
import 'package:flutter_remote_control_terminal/core/domain/repository/log-repo.dart';
import 'package:flutter_remote_control_terminal/core/infra/repository/in-memory-log-repo-impl.dart';

class log {
  static LogRepo repo = InMemoryLogRepoImpl();
  static List<VoidCallback> changeListeners = [];

  static void info(dynamic value) {
    switch(value.runtimeType){
      case String:
        log.repo.writeLine(value);
    }
    changeListeners.forEach((element) {
      element();
    });
  }

  static void onChange(VoidCallback callback) {
    changeListeners.add(callback);
  }

  static String get({int? lineCount}) {
    return log.repo.get(lineCount: lineCount);
  }
}