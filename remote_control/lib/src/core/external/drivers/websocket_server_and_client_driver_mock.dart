import '../../domain/entities.dart';
import '../../infra/drivers/websocket_driver.dart';

class WebSocketServerAndClientDriverMock extends WebsocketDriver {
  @override
  Future<void> initialize(RemoteControlConfig appModeConfig) async {

  }
}