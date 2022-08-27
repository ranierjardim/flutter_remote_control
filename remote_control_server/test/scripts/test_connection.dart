import 'package:remote_control_server/remote_control_server.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    //final awesome = Awesome();

    setUp(() {
      RemoteControlServer.start(RemoteControlClientConfig());
    });

    test('First Test', () {
      //expect(awesome.isAwesome, isTrue);
    });
  });
}
