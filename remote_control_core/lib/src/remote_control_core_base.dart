import 'package:remote_control_core/src/core/domain/entities.dart';

/// Remote Control Core (for any dart app)
///
/// See more at: [https://github.com/ranierjardim/flutter_remote_control](https://github.com/ranierjardim/flutter_remote_control)
class RemoteControlCore {

  static bool _debug = false;

  static setDebug(bool isDebugMode) {
    RemoteControlCore._debug = isDebugMode;
  }
}
