import 'package:eat_wise/meal.dart';
import 'package:flutter/material.dart';
import 'category_item.dart';
import 'dummy_item.dart';
import 'category_screen.dart';
import 'meal_item.dart';

class Categorymealscreen extends StatefulWidget {
  @override
  State<Categorymealscreen> createState() => _CategorymealscreenState();
}

class _CategorymealscreenState extends State<Categorymealscreen> {
  String? categoryTitle;
  late List<Meal> displayedMeals;
  var loadedinitdata = false;

  @override
  void didChangeDependencies() {
    if (!loadedinitdata) {
      final routeArgs =
          ModalRoute.of(context)?.settings.arguments as Map<String?, String?>;
      categoryTitle = routeArgs['title'];
      final String? categoryid = routeArgs['id'];
      displayedMeals = DUMMY_MEALS.where((meal) {
        return meal.categories?.contains(categoryid) ?? false;
      }).toList();
      loadedinitdata = true;
    }

    super.didChangeDependencies();
  }

  void removemeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(180, 13, 32, 1),
                Color.fromARGB(255, 0, 0, 0),
              ],
            ),
          ),
        ),
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Mealitem(
            id: displayedMeals[index].id,
            title: displayedMeals[index].title,
            imageUrl: displayedMeals[index].imageUrl,
            duration: displayedMeals[index].duration,
            affordability: displayedMeals[index].affordability,
            complexity: displayedMeals[index].complexity,
            Removeitem: removemeal,
          );
        },
        itemCount: displayedMeals.length,
      ),
    );
  }
}
