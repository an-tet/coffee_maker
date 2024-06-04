import 'dart:math';

import 'package:coffee_maker/model/recipe_model.dart';
import 'package:coffee_maker/utils/boxes.dart';
import 'package:flutter/material.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log(boxRecipes.length);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.separated(
            itemBuilder: (context, index) {
              final RecipeModel recipe = boxRecipes.getAt(index)!;
              return ListTile(
                leading: Image.asset(
                  recipe.imagePath,
                  height: 80,
                  width: 80,
                ),
                title: Text(recipe.name),
                subtitle: Text(recipe.description),
                onTap: () {
                  _dialogBuilder(context, recipe);
                },
              );
            },
            separatorBuilder: (context, index) =>
                const Divider(color: Colors.black26),
            itemCount: boxRecipes.length),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<void> _dialogBuilder(BuildContext context, RecipeModel recipe) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(recipe.name),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  recipe.imagePath,
                ),
                const SizedBox(height: 10),
                Text(recipe.description),
                const SizedBox(height: 10),
                for (final step in recipe.detail)
                  ListTile(
                    title: Text(step),
                    leading: CircleAvatar(
                      child: Text('${recipe.detail.indexOf(step) + 1}'),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
