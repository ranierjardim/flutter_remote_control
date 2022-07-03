import 'package:web_socket_channel/web_socket_channel.dart';

import 'core/domain/entities.dart';
import 'core/domain/states.dart';
import 'core/domain/usecases.dart';

class RemoteControl {

  static bool _debug = false;

  static List<RemoteControlRegisterCommandConfig> _registers = [];

  static setDebug(bool isDebugMode) {
    RemoteControl._debug = isDebugMode;
  }

  /// Start remote control instance in the app
  ///
  /// The [appModeConfig] must be a [ServerConfig()] or [ClientConfig()]
  static Stream<ServiceState> start(RemoteControlConfig appModeConfig) => RemoteControlUseCases.startService(appModeConfig);

  /// Register a command
  static Future<bool> register(RemoteControlRegisterCommandConfig command) => RemoteControlUseCases.registerCommand(_registers, command);


}
