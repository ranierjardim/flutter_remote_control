

import '../../domain/entities.dart';

abstract class WebsocketDriver {
  /// Initialize the websocket driver
  Future<void> initialize(RemoteControlConfig appModeConfig);
}

abstract class WebsocketServerDriver extends WebsocketDriver {

}

abstract class WebsocketClientDriver extends WebsocketDriver {

}