import 'package:remote_control_core/remote_control_core.dart';

class RemoteControlServerUseCases {

  static Stream<ServiceState> startService(RemoteControlConfig appModeConfig) async* {
    yield InitializingServiceState();
    if(appModeConfig is RemoteControlServerConfig) {

    }else if(appModeConfig is RemoteControlClientConfig) {

    }
    yield StartedServiceState();
  }

  static Future<bool> registerCommand(List<RemoteControlRegisterCommandConfig> _registers, RemoteControlRegisterCommandConfig command) async {
    if(command is RemoteControlRegisterTextCommandConfig) {
      _registers.add(command);
    }
    return true;
  }

  static Future<bool> listClients(List<RemoteControlRegisterCommandConfig> _registers, RemoteControlRegisterCommandConfig command) async {
    if(command is RemoteControlRegisterTextCommandConfig) {
      _registers.add(command);
    }
    return true;
  }
}