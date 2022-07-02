// GENERATED FILE, do not edit!
import 'package:i18n/i18n.dart' as i18n;
import 'i18nStrings.i18n.dart';

String get _languageCode => 'br';
String _plural(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i18n.plural(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _ordinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i18n.ordinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _cardinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i18n.cardinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);

class I18nStringsBr extends I18nStrings {
  const I18nStringsBr();
  String get locale => "br";
  String get languageCode => "br";
  ButtonI18nStringsBr get button => ButtonI18nStringsBr(this);
  UsersI18nStringsBr get users => UsersI18nStringsBr(this);
  GenericI18nStringsBr get generic => GenericI18nStringsBr(this);
}

class ButtonI18nStringsBr extends ButtonI18nStrings {
  final I18nStringsBr _parent;
  const ButtonI18nStringsBr(this._parent) : super(_parent);
  String get save => """Salvar""";
  String get load => """Carregar""";
}

class UsersI18nStringsBr extends UsersI18nStrings {
  final I18nStringsBr _parent;
  const UsersI18nStringsBr(this._parent) : super(_parent);
  String welcome(String name) => """Olá $name!""";
  String get logout => """Sair""";
}

class GenericI18nStringsBr extends GenericI18nStrings {
  final I18nStringsBr _parent;
  const GenericI18nStringsBr(this._parent) : super(_parent);
  String version(String versionString) => """Versão: $versionString""";
}

Map<String, String> get i18nStringsBrMap => {
      """button.save""": """Salvar""",
      """button.load""": """Carregar""",
      """users.logout""": """Sair""",
    };
