import 'dart:io';

import 'package:flutter_remote_control_terminal/controllers/app-controller.dart';

import '../i18n/i18nStrings.i18n.dart';
import '../i18n/i18nStrings_br.i18n.dart';

late I18nStrings appString;

class AppStringsDelegate {
  static Future<void> load({String? specific}) async {
    specific ??= AppController.appLanguage ?? Platform.localeName;
    switch (specific){
      case 'pt':
      case 'pt_BR':
        appString = const I18nStringsBr();
        break;
      default:
        appString = const I18nStrings();
    }
  }
}