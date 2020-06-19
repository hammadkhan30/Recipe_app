import 'package:flutter/material.dart';

class CategorieMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final CategorieTitle = routeArgs['title'];
    final CategorieId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(CategorieTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {

        },itemCount: ,
      ),
    );
  }
}
