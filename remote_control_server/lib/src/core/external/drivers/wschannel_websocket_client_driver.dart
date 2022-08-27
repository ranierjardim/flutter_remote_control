import 'package:web_socket_channel/web_socket_channel.dart';

import 'package:remote_control_core/remote_control_core.dart';



class WSChannelWebSocketClientDriver extends WebsocketDriver {
  @override
  Future<void> initialize(RemoteControlConfig appModeConfig) async {
    final channel = WebSocketChannel.connect(
      Uri.parse('ws://192.168.31.203:3000'),
    );
    channel.sink.add("taporra");
  }
}