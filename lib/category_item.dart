import 'package:flutter/material.dart';
import 'category_mealscreen.dart';

class Categoryitem extends StatelessWidget {
  final String? title;
  final Color? color;
  final String? id;
  Categoryitem({this.color, this.title, this.id});

  void selectedCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed('/category_meal', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedCategory(context),
      splashColor: Color(0xFF12345),
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(title!),
        //color: color,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color!.withOpacity(0.7),
              color!.withOpacity(0.3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
