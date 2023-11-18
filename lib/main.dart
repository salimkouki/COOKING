import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cooking/screens/ListeRecette/recette.dart';
import 'package:cooking/screens/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.yellow,
        accentColor: Colors.yellowAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(
        splash: const SplashScreen(),
        nextScreen: RecipeListScreen(),
    splashTransition: SplashTransition.fadeTransition,
    ),
    );
  }
}
