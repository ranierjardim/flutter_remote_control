import 'package:remote_control_core/src/core/domain/constants.dart';

import 'constants.dart';

/// The mode of application
/// The running application can be a server or a client
enum RemoteControlModeTypeEnum {
  server,
  client,
  mixedForTesting,
}

/// The type of client connection
/// The client can be:
/// - A terminal to send commands to clients
/// - A remote controlled client, that accepts commands from terminals
enum RemoteControlConnectionTypeEnum {
  terminal,
  remoteControlledClient,
}

/// Config of initialization.
/// Options:
/// - ServerConfig()
/// - ClientConfig()
abstract class RemoteControlConfig {
  late final RemoteControlModeTypeEnum type;
  late final int port;
}

/// Config for run as Server
class RemoteControlServerConfig implements RemoteControlConfig {
  @override
  RemoteControlModeTypeEnum type = RemoteControlModeTypeEnum.server;

  @override
  int port;

  RemoteControlServerConfig({this.port = remoteControlDefaultPort});
}

/// Config for run as client
/// As a client, you can run [clientType] as:
/// - [RemoteControlConnectionTypeEnum.remoteControlledClient]
///     - As a remote controlled client, you only receive commands
/// - [RemoteControlConnectionTypeEnum.terminal]
///     - As a terminal, you only can send commands
class RemoteControlClientConfig implements RemoteControlConfig {
  @override
  RemoteControlModeTypeEnum type = RemoteControlModeTypeEnum.client;

  final RemoteControlConnectionTypeEnum clientType;

  @override
  int port;

  /// Config for run as client
  ///
  /// As a client, you can run [clientType] as:
  /// - [RemoteControlConnectionTypeEnum.remoteControlledClient]
  ///     - As a remote controlled client, you only receive commands
  /// - [RemoteControlConnectionTypeEnum.terminal]
  ///     - As a terminal, you only can send commands
  RemoteControlClientConfig({this.port = remoteControlDefaultPort, this.clientType = RemoteControlConnectionTypeEnum.remoteControlledClient});
}

/// This mode is for testing, it run as server and client
class RemoteControlMixedConfigForTesting implements RemoteControlConfig {
  @override
  RemoteControlModeTypeEnum type = RemoteControlModeTypeEnum.mixedForTesting;

  @override
  int port;

  RemoteControlMixedConfigForTesting({this.port = remoteControlDefaultTestPort});
}

/// Command config registry values
/// Available types of commands:
/// - [RemoteControlRegisterTextCommandConfig()]
abstract class RemoteControlRegisterCommandConfig {
  late final String name;
  late final void Function() callback;
}

/// Text command config,
/// it can be executed by text at terminal
class RemoteControlRegisterTextCommandConfig implements RemoteControlRegisterCommandConfig {
  @override
  String name;

  @override
  void Function() callback;

  RemoteControlRegisterTextCommandConfig(this.name, this.callback);
}



abstract class RemoteControlUserConnection {
  //Future<void> Function() onReceiveMessage;
}
