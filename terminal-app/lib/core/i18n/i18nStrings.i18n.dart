// GENERATED FILE, do not edit!
import 'package:i18n/i18n.dart' as i18n;

String get _languageCode => 'en';
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

class I18nStrings {
  const I18nStrings();
  String get locale => "en";
  String get languageCode => "en";
  ButtonI18nStrings get button => ButtonI18nStrings(this);
  UsersI18nStrings get users => UsersI18nStrings(this);
  GenericI18nStrings get generic => GenericI18nStrings(this);
}

class ButtonI18nStrings {
  final I18nStrings _parent;
  const ButtonI18nStrings(this._parent);
  String get save => """Save""";
  String get load => """Load""";
}

class UsersI18nStrings {
  final I18nStrings _parent;
  const UsersI18nStrings(this._parent);
  String welcome(String name) => """Hello $name!""";
  String get logout => """Logout""";
}

class GenericI18nStrings {
  final I18nStrings _parent;
  const GenericI18nStrings(this._parent);
  String version(String versionString) => """Version: $versionString""";
}

Map<String, String> get i18nStringsMap => {
      """button.save""": """Save""",
      """button.load""": """Load""",
      """users.logout""": """Logout""",
    };
