import 'package:flutter/material.dart';
import 'dummy_item.dart';
import 'category_item.dart';
import 'category.dart';

class categoryScreen extends StatelessWidget {
  const categoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'MEAL APP',
      //     style: TextStyle(
      //       fontFamily: 'Pacifico',
      //     ),
      //   ),
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //         gradient: LinearGradient(colors: [
      //       Color.fromARGB(213, 224, 10, 10),
      //       Color.fromARGB(159, 16, 5, 83),
      //       Color.fromARGB(159, 8, 80, 101),
      //     ])),
      //   ),
      // ),
      body: GridView(
        padding: EdgeInsets.all(25.0),
        children: Dummy_list.map((catdata) => Categoryitem(
              title: catdata.title,
              color: catdata.color,
              id: catdata.id,
            )).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0),
      ),
    );
  }
}
