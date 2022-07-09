import 'dart:async';
import 'package:flutter/services.dart';
export 'package:remote_control/remote_control.dart';

class RemoteControl {
  static const MethodChannel _channel = MethodChannel('remote_control');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
