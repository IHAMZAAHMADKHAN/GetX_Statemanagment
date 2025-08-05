import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_statemanagement/view/favorite_class.dart';

class AddFavorites extends StatefulWidget {
  const AddFavorites({super.key});

  @override
  State<AddFavorites> createState() => _AddFavoritesState();
}

class _AddFavoritesState extends State<AddFavorites> {
  FavoriteClass favorite = Get.put(FavoriteClass());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: favorite.booklist.length,
          itemBuilder: (context, index) {
            print("Build");
            return Card(
              child: ListTile(
                onTap: () {
                  String selectedBook = favorite.booklist[index];
                  if (favorite.favoritelist.contains(selectedBook)) {
                    favorite.favoritelist.remove(selectedBook);
                  } else {
                    favorite.favoritelist.add(selectedBook);
                  }
                },
                title: Text(favorite.booklist[index].toString()),
                trailing: Obx(() {
                  return Icon(
                    favorite.favoritelist.contains(favorite.booklist[index])
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color:
                        favorite.favoritelist.contains(favorite.booklist[index])
                        ? Colors.red
                        : Colors.grey,
                  );
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}
