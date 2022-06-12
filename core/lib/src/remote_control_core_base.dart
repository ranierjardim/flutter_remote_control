
import 'package:remote_control_core/remote_control_core.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:get_server/get_server.dart' as gs;

class RemoteControlCore {

  static bool _debug = false;

  static List<RegisterConfig> _registers = [];

  static late gs.GetServer _server;

  static setDebug(bool isDebugMode) {
    RemoteControlCore._debug = isDebugMode;
  }

  static Stream<ServiceState> start(ConnectionConfig config) async* {
    yield InitializingServiceState();
    print('start nesse caraio, porta: ${config.port}');
    if(config is ServerConfig) {
      _server = gs.GetServer(port: config.port,);
      _server.get('/info', (ctx) {
        return gs.Text('Flutter Remote Control server');
      });
      _server.ws('', (ws) {
        ws.onMessage((data) {
          print('data: $data');
          ws.send(data);
        });
        ws.onOpen((ws) {
          print('new socket opened');
        });
        ws.onClose((ws) {
          print('socket has been closed');
        });
      });
      print('iniciado ${config.port}');
    }else if(config is ClientConfig) {
      final channel = WebSocketChannel.connect(
        Uri.parse('ws://192.168.31.203:3000'),
      );
      channel.sink.add("taporra");
    }
    if(_debug){
      print('test');
    }
    yield StartedServiceState();
  }

  static Future<bool> register(RegisterConfig config) async {
    if(config is CommandConfig) {
      _registers.add(config);
    }
    return true;
  }
}
