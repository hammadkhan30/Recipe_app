import 'dart:ui';
import './view/categorie_meals_screen.dart';
import 'package:flutter/material.dart';
import './view/categories_screen.dart';
import './view/meal_detail.dart';

void main() => runApp(RecipeApp());

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Recipes",
      theme: ThemeData(
        primaryColor: Colors.amberAccent,
        accentColor: Colors.yellowAccent,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20,51,51,1),
          ),
          body2: TextStyle(
              color: Color.fromRGBO(20,51,51,1),
          ),
          title:TextStyle(
            fontSize: 24,
            fontFamily:'RobotoCondensed',
          ),
        ),
      ),
      home: CategoriesScreen(),
      routes: {
        '/categories': (ctx) => CategorieMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
    );
  }
}
