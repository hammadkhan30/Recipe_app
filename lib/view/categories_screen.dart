import 'package:flutter/material.dart';
import '../controller/categorie_item.dart';
import '../Model/original .dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(15),
        children: DUMMY_CATEGORIES
            .map((catData) =>
                CategorieItem(catData.id, catData.title, catData.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 20,
        ),
    );
  }
}
