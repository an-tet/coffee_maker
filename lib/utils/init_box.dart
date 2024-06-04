import 'package:coffee_maker/model/recipe_model.dart';
import 'package:coffee_maker/utils/boxes.dart';

void initBox() {
  final v60Recipe = RecipeModel(
    name: 'V60',
    imagePath: 'images/v60.jpg',
    description: 'A manual pour-over method using a V60 dripper.',
    detail: [
      'Heat water to 93°C (200°F).',
      'Place a filter in the V60 and rinse it with hot water.',
      'Add 15g of coffee ground medium-fine.',
      'Pour 30g of water to bloom the coffee for 30 seconds.',
      'Slowly pour in the remaining 240g of water in circular motions.',
      'Let the coffee drip through, total brew time should be around 3 minutes.',
      'Serve and enjoy.'
    ],
  );

  final kalitaRecipe = RecipeModel(
    name: 'Kalita Wave',
    imagePath: 'images/kalita.jpeg',
    description:
        'A flat-bottomed pour-over method using a Kalita Wave dripper.',
    detail: [
      'Heat water to 93°C (200°F).',
      'Place a filter in the Kalita Wave and rinse it with hot water.',
      'Add 20g of coffee ground medium.',
      'Pour 40g of water to bloom the coffee for 30 seconds.',
      'Slowly pour in the remaining 300g of water in circular motions.',
      'Let the coffee drip through, total brew time should be around 3-4 minutes.',
      'Serve and enjoy.'
    ],
  );

  final chemexRecipe = RecipeModel(
    name: 'Chemex',
    imagePath: 'images/chemex.webp',
    description: 'A manual pour-over method using a Chemex brewer.',
    detail: [
      'Heat water to 93°C (200°F).',
      'Place a filter in the Chemex and rinse it with hot water.',
      'Add 30g of coffee ground medium-coarse.',
      'Pour 60g of water to bloom the coffee for 30 seconds.',
      'Slowly pour in the remaining 480g of water in circular motions.',
      'Let the coffee drip through, total brew time should be around 4-5 minutes.',
      'Serve and enjoy.'
    ],
  );

  final aeropressRecipe = RecipeModel(
    name: 'AeroPress',
    imagePath: 'images/aeropress.webp',
    description: 'A versatile brewing method using an AeroPress.',
    detail: [
      'Heat water to 85°C (185°F).',
      'Assemble the AeroPress with a filter and rinse it with hot water.',
      'Add 17g of coffee ground medium-fine.',
      'Pour 220g of water into the AeroPress and stir.',
      'Insert the plunger and press gently for about 30 seconds.',
      'Serve and enjoy.'
    ],
  );

  final espressoRecipe = RecipeModel(
    name: 'Espresso',
    description:
        'A small amount of nearly boiling water is forced through finely-ground coffee beans.',
    detail: [
      "Preheat the espresso machine to ensure optimal brewing temperature (190-195°F or 88-91°C).",
      "Grind freshly roasted coffee beans to a fine consistency, similar to table salt.",
      "For a single shot, measure 7-9 grams of ground coffee; for a double shot, measure 14-18 grams.",
      "Clean the portafilter and fill it with the freshly ground coffee, distributing it evenly.",
      "Use a tamper to press the coffee grounds firmly and evenly with about 30 pounds of pressure.",
      "Lock the portafilter into the group head of the espresso machine.",
      "Start the extraction process, aiming for a 25-30 second extraction time.",
      "Ensure the espresso flows smoothly and has a thick, creamy layer of crema on top.",
      "A single shot should yield about 1 ounce (30 ml); a double shot should yield about 2 ounces (60 ml).",
      "Serve the espresso immediately in a pre-warmed demitasse cup to maintain its temperature."
    ],
    imagePath: 'images/espresso.jpeg',
  );

  boxRecipes.put(1, espressoRecipe);
  boxRecipes.put(2, v60Recipe);
  boxRecipes.put(3, kalitaRecipe);
  boxRecipes.put(4, chemexRecipe);
  boxRecipes.put(5, aeropressRecipe);
}
