import 'dart:async';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:remote_control/core/domain/states.dart';
import 'package:serveme/serveme.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'core/domain/entities.dart';

export 'core/domain/entities.dart';

class RemoteControl {

  static bool _debug = false;

  static List<RegisterConfig> _registers = [];

  static const MethodChannel _channel = MethodChannel('remote_control');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static setDebug(bool isDebugMode) {
    RemoteControl._debug = isDebugMode;
  }

  static Stream<ServiceState> start(ConnectionConfig config) async* {
    yield InitializingServiceState();
    if(config is ServerConfig) {
      final ServeMe<ServeMeClient> server = ServeMe<ServeMeClient>(configFile: 'port: ${config.port}', type: ServeMeType.tcp);
      server.listen<String>((String message, ServeMeClient client) async {
        log('Got a message: $message');
      });
      server.run();
    }else if(config is ClientConfig) {
      final channel = WebSocketChannel.connect(
        Uri.parse('ws://192.168.31.203:48231'),
      );
      channel.sink.add("taporra");
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
