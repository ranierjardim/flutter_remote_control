import 'package:remote_control_core/remote_control_core.dart';
import 'package:remote_control_dedicated_server/remote_control_dedicated_server.dart' as remote_control_dedicated_server;



void main(List<String> arguments) {
  print('Iniciando');
  RemoteControlCore.start(ServerConfig()).listen((event) {
    print('Remote Control Server Event: ${event.runtimeType}');
  });
}