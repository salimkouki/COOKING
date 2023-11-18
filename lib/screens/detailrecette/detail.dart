import 'dart:ui';

import 'package:flutter/material.dart';

import '../ListeRecette/recette.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(

        child: Container(
          alignment: Alignment.center,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(recipe.imageUrl , alignment: Alignment.center),
                Text('Ingredients:', style: TextStyle(color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),),
                ...recipe.ingredients.map((ingredient) => Text('• $ingredient', style: TextStyle(color: Colors.yellow),)).toList(),
                SizedBox(height: 20),
                Text('Instructions:', style: TextStyle(color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),),
                Text(recipe.instructions, style: TextStyle(color: Colors.yellow),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}