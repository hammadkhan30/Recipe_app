import 'package:flutter/material.dart';
import './view/categories_screen.dart';

void main() => runApp(RecipeApp());

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Recipes",
      home: CategoriesScreen(),
    );
  }
}
