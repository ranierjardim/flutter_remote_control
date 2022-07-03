
import '../../domain/entities.dart';
import '../../infra/drivers/websocket_driver.dart';
import 'package:get_server/get_server.dart' as gs;


class GetXWebSocketServerDriver extends WebsocketDriver {
  static late gs.GetServer _server;
  @override
  Future<void> initialize(RemoteControlConfig appModeConfig) async {
    _server = gs.GetServer(port: appModeConfig.port,);
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
    print('iniciado ${appModeConfig.port}');
  }
}