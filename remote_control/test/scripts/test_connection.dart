import 'package:remote_control/remote_control.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    //final awesome = Awesome();

    setUp(() {
      RemoteControl.start(RemoteControlClientConfig());
    });

    test('First Test', () {
      //expect(awesome.isAwesome, isTrue);
    });
  });
}
