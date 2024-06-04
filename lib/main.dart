import 'package:coffee_maker/model/recipe_model.dart';
import 'package:coffee_maker/pages/recipe_page.dart';
import 'package:coffee_maker/utils/boxes.dart';
import 'package:coffee_maker/utils/init_box.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(RecipeModelAdapter());
  boxRecipes = await Hive.openBox<RecipeModel>('recipes');
  initBox();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const title = 'Coffee recipes';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RecipesPage(title: title),
    );
  }
}
