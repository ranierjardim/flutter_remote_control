import 'package:flutter/material.dart';

import 'package:remote_control/remote_control.dart';
import '../../core/domain/events/app-drawer-event.dart';
import '../app-drawer.dart';
import '../fragments/config-fragment.dart';
import '../fragments/terminal-fragment.dart';
import 'package:flutter_remote_control_terminal/core/helpers/log.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _content = TerminalFragment();
  String terminalText = '';

  @override
  void initState() {
    log.onChange(() {
      setState(() {
        terminalText = log.get();
      });
    });
    RemoteControlCore.start(RemoteControlServerConfig()).listen((event) {
      log.info('Remote Control Server Event: ${event.runtimeType}');
    });
    super.initState();
  }

  void _drawerHander(AppDrawerEvent event) {
    if (event is TerminalButtonClickAppDrawerEvent) {
      _content = TerminalFragment();
    } else {
      _content = ConfigFragment();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User id (SM-G970F)'),
      ),
      extendBody: false,
      drawer: AppDrawer(
        eventHandler: _drawerHander,
      ),
      body: Row(
        children: [
          AppDrawer(
            eventHandler: _drawerHander,
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              switchInCurve: Curves.easeOutExpo,
              switchOutCurve: Curves.linear,
              reverseDuration: Duration(milliseconds: 200),
              transitionBuilder: (child, animation) {
                return ScaleTransition(
                  scale: animation,
                  //animation.drive(CurveTween(curve: Curves.elasticOut)),
                  filterQuality: FilterQuality.none,
                  child: FadeTransition(
                    opacity: animation,
                    //.drive(CurveTween(curve: ShowContentAppCurve())),
                    child: child,
                  ),
                );
              },
              child: _content,
            ),
          ),
        ],
      ),
    );
  }
}
