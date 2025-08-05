import 'package:get/get.dart';

class FavoriteClass extends GetxController {
  List<String> booklist = [
    'Atomic Habits',
    'Deep Work',
    'zama jund and jadojihad',
    'Rich DAD Poor DAD',
    'zero To One',
    'AlChemist',
  ].obs;

  RxList favoritelist = [].obs;

  addtofavorite(String value) {
    favoritelist.add(value);
  }

  removetofavorite(String value) {
    favoritelist.remove(value);
  }
}
