
// Remote Control Service State

abstract class ServiceState {}

class InitializingServiceState extends ServiceState {}

class StartedServiceState extends ServiceState {}

class ErrorServiceState extends ServiceState {}




// WebSocket server/client states

abstract class WebSocketState {}

