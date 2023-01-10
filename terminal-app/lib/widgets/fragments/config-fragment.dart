

import 'package:flutter/material.dart';

class ConfigFragment extends StatefulWidget {
  const ConfigFragment({Key? key}) : super(key: key);

  @override
  State<ConfigFragment> createState() => _ConfigFragmentState();
}

class _ConfigFragmentState extends State<ConfigFragment> {

  @override
  Widget build(BuildContext context) {

    return Container(color: Colors.white, child: Text('taporra', style: TextStyle(fontSize: 30),),);
  }
}
