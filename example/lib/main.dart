import 'package:flutter/material.dart';
import 'package:remote_control/remote_control.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:websocket_manager/websocket_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> texts = [];
  final ScrollController _controller = ScrollController();
  WebSocketChannel? channel;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> conteudo = texts
        .map((e) => Text(
              'Comando: $e\n',
              style: const TextStyle(backgroundColor: Colors.white),
            ))
        .toList();

    final button = MaterialButton(
      child: Text('Connect'),
      color: Colors.blue,
      onPressed: () async {
        texts.clear();
        final addr = 'wss://echo.websocket.org';
        texts.add('Iniciando... $addr');
        setState(() {});
        //ws://127.0.0.1:9001
        channel!.sink.add("taporra");
        texts.add('Iniciado...');
        texts.add('Iniciando... $addr');
        int messageNum = 0;
        final socket = WebsocketManager(addr);
        socket.onClose((dynamic message) {
          print('close');
        });
        socket.onMessage((dynamic message) {
          print('recv: $message');
          if (messageNum == 10) {
            socket.close();
          } else {
            messageNum += 1;
            final String msg = '$messageNum: ${DateTime.now()}';
            print('send: $msg');
            socket.send(msg);
          }
        });
        await socket.connect();
        socket.send('porra');
        texts.add('Iniciado...');
        setState(() {});
        _controller.animateTo(
          _controller.position.maxScrollExtent,
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        );
      },
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ListView(controller: _controller, children: conteudo),
        floatingActionButton: button,
      ),
    );
  }
}
