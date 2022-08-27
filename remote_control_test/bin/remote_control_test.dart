import 'package:remote_control/remote_control.dart' as rc;
import 'package:remote_control_server/remote_control_server.dart' as rcs;

void main(List<String> arguments) {
  print('Iniciando');
  rcs.RemoteControlServer.start(rcs.RemoteControlServerConfig()).listen((event) {
    print('Remote Control Server Event: ${event.runtimeType}');
  });
  rc.RemoteControl.start(rc.RemoteControlClientConfig());
}