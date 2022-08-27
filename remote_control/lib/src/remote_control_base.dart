import 'package:remote_control/src/core/domain/states/fetch_connections_state.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'core/domain/entities.dart';
import 'core/domain/states.dart';
import 'core/domain/usecases.dart';

/// Remote Control Core (for any dart app)
///
/// See more at: [https://github.com/ranierjardim/flutter_remote_control](https://github.com/ranierjardim/flutter_remote_control)
class RemoteControl {

  static bool _debug = false;

  static List<RemoteControlRegisterCommandConfig> _registers = [];

  static setDebug(bool isDebugMode) {
    RemoteControl._debug = isDebugMode;
  }

  /// Start remote control instance in the app
  ///
  /// The [appModeConfig] must be a [RemoteControlServerConfig()] or [RemoteControlClientConfig()]
  static Stream<ServiceState> start(RemoteControlConfig appModeConfig) => RemoteControlUseCases.startService(appModeConfig);

  /// Register a command
  static Future<bool> register(RemoteControlRegisterCommandConfig command) => RemoteControlUseCases.registerCommand(_registers, command);

  //static Stream<FetchConnectionsState> fetchUsers() =>
}
