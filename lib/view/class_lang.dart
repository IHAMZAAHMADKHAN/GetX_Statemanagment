import 'package:get/get.dart';

class Tranlastion extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello',
      'welcome': 'Welcome',
      'language': 'Language',
      'toggle': 'Toggle Language',
    },
    'ps_AF': {
      'hello': 'سلام',
      'welcome': 'ښه راغلاست',
      'language': 'ژبه',
      'toggle': 'ژبه بدلول',
    },
  };
}
