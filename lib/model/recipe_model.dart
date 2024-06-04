import 'package:hive/hive.dart';

part 'recipe_model.g.dart';

@HiveType(typeId: 1)
class RecipeModel extends HiveObject {
  RecipeModel({
    required this.name,
    required this.description,
    required this.detail,
    required this.imagePath,
  });

  @HiveField(0)
  String name;
  @HiveField(1)
  String description;
  @HiveField(2)
  List<String> detail;
  @HiveField(3)
  String imagePath;
}
