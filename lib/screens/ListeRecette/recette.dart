import 'package:flutter/material.dart';

import '../detailrecette/detail.dart';

class Recipe {
  final String title;
  final List<String> ingredients;
  final String instructions;
  final String imageUrl;

  Recipe(this.title, this.ingredients, this.instructions, this.imageUrl);

}
class RecipeListScreen extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      'Tomato Soup',
      ['Tomatoes', 'Onion', 'Garlic'],
      'Combine all ingredients and simmer for 20 minutes.',
      'assets/images/download.jpg'
    ),
    Recipe(
      'Classic Caesar Salad',
      ['1 head of Romaine lettuce', '1/2 cup of croutons', 'Parmesan cheese', 'Caesar dressing'],
      'Toss lettuce with croutons, cheese, and dressing before serving.',
        'assets/images/img.png'
    ),
    Recipe(
      'Pancakes',
      ['1 cup of all-purpose flour', '2 tablespoons of sugar', '1 tablespoon of baking powder', '1 cup of milk', '1 egg'],
      'Mix all the ingredients. Pour 1/4 cup of batter on a hot griddle. Flip when bubbles form on top.',
        'assets/images/img_1.png'
    ),
    Recipe(
      'Spaghetti Carbonara',
      ['400g of Spaghetti', '150g of pancetta', '3 large eggs', '3/4 cup of grated Parmesan', 'Black pepper'],
      'Cook spaghetti. Fry pancetta until crisp. Whisk eggs and Parmesan. Combine all and season with pepper.',
        'assets/images/img_2.png'
    ),
    Recipe(
      'Chicken Curry',
      ['500g of chicken breast', '2 tbsp curry powder', '400ml coconut milk', '1 onion', '2 garlic cloves'],
      'Sauté onion and garlic. Add chicken and curry powder. Pour in coconut milk and simmer.',
      'assets/images/img_4.png',
    ),
    Recipe(
      'Beef Tacos',
      ['500g ground beef', 'Taco shells', 'Salsa', 'Cheese', 'Lettuce'],
      'Cook beef until browned. Fill taco shells with beef, salsa, cheese, and lettuce.',
      'assets/images/img_5.png',
    ),
    Recipe(
      'Mushroom Risotto',
      ['1 cup risotto rice', '500g mushrooms', '4 cups chicken stock', '1 onion', 'Parmesan cheese'],
      'Sauté onion and mushrooms. Add rice and stock. Cook until creamy. Stir in Parmesan.',
      'assets/images/img_6.png',
    ),
    Recipe(
      'Margherita Pizza',
      ['Pizza dough', 'Tomato sauce', 'Fresh mozzarella', 'Basil', 'Olive oil'],
      'Spread sauce on dough. Add slices of mozzarella and basil. Drizzle with olive oil and bake.',
      'assets/images/img_7.png',
    ),
    Recipe(
      'Lemon Drizzle Cake',
      ['225g sugar', '225g butter', '4 eggs', '225g flour', 'Lemon zest', 'Lemon juice'],
      'Cream butter and sugar. Add eggs and flour. Mix in lemon zest and juice. Bake until golden.',
      'assets/images/img_8.png',
    ),
    Recipe(
      'Vegetable Stir Fry',
      ['Mixed vegetables', 'Soy sauce', 'Ginger', 'Garlic', 'Sesame oil'],
      'Sauté vegetables, ginger, and garlic. Add soy sauce and cook until veggies are tender.',
      'assets/images/img_9.png',
    ),
    Recipe(
      'Chocolate Brownies',
      ['200g chocolate', '175g butter', '325g sugar', '130g flour', '3 eggs'],
      'Melt chocolate and butter. Stir in sugar and eggs. Fold in flour. Bake until set.',
      'assets/images/img_4.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Center (child :Text('COOKOU')),
        backgroundColor: Colors.black,
      ),
        body:Column(
        children: [
          Container(
          width: 500,
          height: 200,
          color: Colors.black,
          child: Column(
            children: [
              SizedBox(
                  height: 150,
                  child: Image.asset("assets/images/img_3.png")),
            ],
          )),
          const SizedBox(height: 15 , child: Text("Recipe Catalog"),),
          Container(
              width: 500,
              height: 480,
              color: Colors.black,
              child:ListView.separated(
                itemCount: recipes.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.black,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(recipes[index].imageUrl), // For local assets
                        // For network images use: NetworkImage(recipes[index].imageUrl),
                      ),
                      title: Text(
                        recipes[index].title,
                        style: TextStyle(color: Colors.yellow),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecipeDetailScreen(recipe: recipes[index]),
                          ),
                        );
                      },
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(color: Colors.yellowAccent),
              )

          )

          ],
      )
    );
  }
}

   /* ListView.separated(
    itemCount: recipes.length,
    itemBuilder: (context, index) {
    return Container(
    color: Colors.black,
    child: ListTile(
    leading: CircleAvatar(
    backgroundImage: AssetImage(recipes[index].imageUrl), // For local assets
    // For network images use: NetworkImage(recipes[index].imageUrl),
    ),
    title: Text(
    recipes[index].title,
    style: TextStyle(color: Colors.yellow),
    ),
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => RecipeDetailScreen(recipe: recipes[index]),
    ),
    );
    },
    ),
    );
    },
    separatorBuilder: (context, index) => Divider(color: Colors.yellowAccent),
    ) , */