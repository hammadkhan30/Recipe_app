import 'package:flutter/material.dart';
import '../controller/meal_item.dart';
import '../Model/meal.dart';

class CategorieMealsScreen extends StatefulWidget {
  static const routeName = '/categorie-meals';
  final List<Meal> _availableMeals;

  CategorieMealsScreen(this._availableMeals);

  @override
  _CategorieMealsScreenState createState() => _CategorieMealsScreenState();
}

class _CategorieMealsScreenState extends State<CategorieMealsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categorieTitle = routeArgs['title'];
    final categorieId = routeArgs['id'];
    final categorieMeals = widget._availableMeals.where((meal) {
      return meal.categories.contains(categorieId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categorieTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id:  categorieMeals[index].id,
            title: categorieMeals[index].title,
            imageUrl: categorieMeals[index].imageUrl,
            duration: categorieMeals[index].duration,
            complexity: categorieMeals[index].complexity,
            affordability: categorieMeals[index].affordability,
          );
        },
        itemCount: categorieMeals.length,
      ),
    );
  }
}
