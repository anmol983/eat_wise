import 'package:flutter/material.dart';
import 'category_screen.dart';
import 'category_mealscreen.dart';
import 'meal_screen_detail.dart';
import 'tabscreen.dart';
import 'filter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber,
        canvasColor: Color.fromARGB(255, 179, 219, 243),
        fontFamily: 'Pacifico',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromARGB(255, 155, 109, 109),
              ),
            ),
      ),
      //home: categoryScreen(),
      routes: {
        '/': (context) => TabScreen(),
        '/category_meal': (context) => Categorymealscreen(),
        '/meal_screen_detail': (context) => MealScreenDetail(),
        '/filter_screen': (context) => FilterApp(),
      },
    );
  }
}
