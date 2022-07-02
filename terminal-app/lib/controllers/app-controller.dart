

import 'package:flutter_remote_control_terminal/core/domain/enums/app-view-mode-enum.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../core/domain/entities/app-config.dart';

/// Contains app configs and infos
class AppController {
  static late AppConfig _appConfig;
  static late String _version;
  static late String? _buildNumber;
  static late String? _preferredLanguage;

  static Future<void> load() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    _version = packageInfo.version;
    if(packageInfo.buildNumber != _version) {
      _buildNumber = packageInfo.buildNumber;
    }else{
      _buildNumber = null;
    }
    _preferredLanguage = null;
    _appConfig = AppConfig(AppViewModeEnum.desktop);
  }

  static String get appVersion => _version;
  static String? get appBuildNumber => _buildNumber;
  static String? get appLanguage => _preferredLanguage;
  static AppConfig get config => _appConfig;
}