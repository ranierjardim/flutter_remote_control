import 'package:remote_control_core/remote_control_core.dart';
import 'package:remote_control_server/src/core/domain/usecases.dart';

/// Remote Control Core (for any dart app)
///
/// See more at: [https://github.com/ranierjardim/flutter_remote_control](https://github.com/ranierjardim/flutter_remote_control)
class RemoteControlServer {

  static bool _debug = false;

  static List<RemoteControlRegisterCommandConfig> _registers = [];

  static setDebug(bool isDebugMode) {
    RemoteControlServer._debug = isDebugMode;
  }

  /// Start remote control instance in the app
  ///
  /// The [appModeConfig] must be a [RemoteControlServerConfig()] or [RemoteControlClientConfig()]
  static Stream<ServiceState> start(RemoteControlConfig appModeConfig) => RemoteControlServerUseCases.startService(appModeConfig);

  /// Register a command
  static Future<bool> register(RemoteControlRegisterCommandConfig command) => RemoteControlServerUseCases.registerCommand(_registers, command);

  //static Stream<FetchConnectionsState> fetchUsers() =>
}
