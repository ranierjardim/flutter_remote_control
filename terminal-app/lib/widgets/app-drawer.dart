import 'package:flutter/material.dart';
import 'package:flutter_remote_control_terminal/core/domain/events/app-drawer-event.dart';
import 'package:flutter_remote_control_terminal/core/helpers/app-strings.dart';

import '../controllers/app-controller.dart';
import '../design/app-color.dart';

class AppDrawer extends StatefulWidget {
  void Function(AppDrawerEvent event) eventHandler;

  AppDrawer({Key? key, required this.eventHandler}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Terminal'),
            onTap: () {},
          )
        ],
      ),
    );

    return Container(
      color: AppColor.primaryContainer,
      width: 260,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('asd'),
            MaterialButton(
              child: Text('terminal'),
              onPressed: () {
                widget.eventHandler(TerminalButtonClickAppDrawerEvent());
              },
            ),
            MaterialButton(
              child: Text('config'),
              onPressed: () {
                widget.eventHandler(ConfigButtonClickAppDrawerEvent());
              },
            ),
            Text(appString.generic.version(
                '${AppController.appVersion}${AppController.appBuildNumber != null ? '+${AppController.appBuildNumber!}' : ''}'))
          ],
        ),
      ),
    );
  }
}
