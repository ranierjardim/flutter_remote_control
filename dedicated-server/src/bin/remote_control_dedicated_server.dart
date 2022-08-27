import 'package:remote_control_server/remote_control_server.dart';

void main(List<String> arguments) {
  print('Iniciando');
  RemoteControlServer.start(RemoteControlServerConfig()).listen((event) {
    print('Remote Control Server Event: ${event.runtimeType}');
  });
}