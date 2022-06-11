import 'package:flutter_remote_control_terminal/core/domain/repository/log-repo.dart';

class InMemoryLogRepoImpl extends LogRepo {
  static List<String> lines = [];

  @override
  void writeLine(String line) {
    lines.add(line);
  }

  @override
  String get({int? lineCount}) {
    return lines.join('\n');
  }
}