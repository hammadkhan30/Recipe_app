import 'package:flutter/material.dart';

class CategorieMealsScreen extends StatelessWidget {
  final String categorieId;
  final String CategorieTitle;

  CategorieMealsScreen(this.categorieId,this.CategorieTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(CategorieTitle),
      ),
    );
  }
}
