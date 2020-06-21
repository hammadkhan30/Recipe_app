import 'package:flutter/material.dart';

class CategorieItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategorieItem(this.id, this.title, this.color);

  void selectCategorie(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/categories',
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategorie(context),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.8),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
