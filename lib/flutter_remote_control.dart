import 'dart:async';
import 'package:flutter/services.dart';
export 'package:remote_control/remote_control.dart';

class FlutterRemoteControl {
  static const MethodChannel _channel = MethodChannel('flutter_remote_control');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
