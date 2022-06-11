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

  ServerConfig({this.port = 3000});
}

class ClientConfig implements ConnectionConfig {
  @override
  ConnectionTypeEnum type = ConnectionTypeEnum.client;

  @override
  int port;

  ClientConfig({this.port = 3000});
}

abstract class RegisterConfig {
  late final String name;
  late final void Function() callback;
}

class CommandConfig implements RegisterConfig {
  @override
  String name;

  @override
  void Function() callback;
  
  CommandConfig(this.name, this.callback);
}


