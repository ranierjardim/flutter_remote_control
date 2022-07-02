import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remote_control_terminal/controllers/app-controller.dart';
import 'package:flutter_remote_control_terminal/core/domain/events/app-drawer-event.dart';
import 'package:flutter_remote_control_terminal/design/curves/show-content-app-curve.dart';
import 'package:flutter_remote_control_terminal/widgets/app-drawer.dart';
import 'package:flutter_remote_control_terminal/widgets/fragments/config-fragment.dart';
import 'package:flutter_remote_control_terminal/widgets/fragments/terminal-fragment.dart';
import 'package:flutter_remote_control_terminal/widgets/screens/main-screen.dart';
import 'package:flutter_remote_control_terminal/widgets/screens/splash-screen.dart';
import 'package:remote_control/remote_control.dart';
import 'package:flutter_remote_control_terminal/core/helpers/log.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'core/helpers/app-strings.dart';
import 'design/app-color.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Loads app config and info's
  await AppController.load();
  // Loads i18n strings
  await AppStringsDelegate.load();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remote control terminal',
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: AppColor.colorScheme,
      ),
      themeMode: ThemeMode.dark,
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        defaultScale: true,
        breakpoints: const [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      home: MainScreen(),
    );
  }
}