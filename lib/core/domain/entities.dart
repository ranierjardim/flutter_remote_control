

import 'package:flutter/cupertino.dart';

enum ConnectionTypeEnum {
  server,
  client
}

/// Config of initialization
///
abstract class ConnectionConfig {
  late final ConnectionTypeEnum type;
  late final int port;
}

class ServerConfig implements ConnectionConfig {
  @override
  ConnectionTypeEnum type = ConnectionTypeEnum.server;

  @override
  int port;

  ServerConfig({this.port = 4623});
}

class ClientConfig implements ConnectionConfig {
  @override
  ConnectionTypeEnum type = ConnectionTypeEnum.client;

  @override
  int port;

  ClientConfig({this.port = 4623});
}

abstract class RegisterConfig {
  late final String name;
  late final VoidCallback callback;
}

class CommandConfig implements RegisterConfig {
  @override
  String name;

  @override
  VoidCallback callback;
  
  CommandConfig(this.name, this.callback);
}


