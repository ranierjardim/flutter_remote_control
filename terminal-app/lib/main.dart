import 'package:flutter/material.dart';
import 'package:remote_control/remote_control.dart';
import 'package:flutter_remote_control_terminal/core/helpers/log.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remote control terminal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String terminalText = '';

  @override
  void initState() {
    log.onChange(() {
      setState(() {
        terminalText = log.get();
      });
    });
    RemoteControlCore.start(ServerConfig()).listen((event) {
      log.info('Remote Control Server Event: ${event.runtimeType}');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(terminalText),
          ],
        ),
      ),
    );
  }
}
