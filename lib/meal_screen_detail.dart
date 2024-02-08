import 'package:eat_wise/dummy_item.dart';
import 'package:flutter/material.dart';
import 'category.dart';
import 'category_item.dart';
import 'meal.dart';
import 'meal_item.dart';
import 'category_screen.dart';
import 'main_drawer.dart';

class MealScreenDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mealid = ModalRoute.of(context)?.settings.arguments as String;
    final categorymeal = DUMMY_MEALS.firstWhere(
      (Meal) => mealid == Meal.id,
    );

    //final String? categoryid = routeArgs['id'];
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(241, 144, 144, 0.835),
            Color.fromARGB(159, 215, 54, 5),
            Color.fromARGB(159, 3, 160, 208),
          ])),
        ),
        title: Text(
          mealid + '' + '->' + categorymeal.title!,
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 20.0,
          ),
        ),
        elevation: 50.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image.network(
                categorymeal.imageUrl!,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10.0,
              width: 10.0,
            ),
            Container(
              child: Text(
                'INGREDIENTS',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              indent: 90.0,
              endIndent: 90.0,
              thickness: 2.0,
            ),
            Container(
              height: 200.0,
              width: 300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.black),
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              child: ListView.builder(
                itemBuilder: (context, index) => Card(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      categorymeal.ingredients![index],
                    ),
                  ),
                ),
                itemCount: categorymeal.ingredients?.length,
              ),
            ),
            Container(
              child: Text(
                'STEPS',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              indent: 90.0,
              endIndent: 90.0,
              thickness: 2.0,
            ),
            Container(
              height: 200.0,
              width: 300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.black),
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              child: ListView.builder(
                itemBuilder: (context, index) => Card(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Step' +
                          '' +
                          (index + 1).toString() +
                          '->' +
                          categorymeal.steps![index],
                    ),
                  ),
                ),
                itemCount: categorymeal.steps?.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.delete,
        ),
        onPressed: () {
          Navigator.of(context).pop(mealid);
        },
      ),
    );
  }
}
