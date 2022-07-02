import '../enums/app-view-mode-enum.dart';

class AppConfig {
  final AppViewModeEnum appViewModeEnum;

  AppConfig(this.appViewModeEnum);

  bool get drawerEnabled => false;
}