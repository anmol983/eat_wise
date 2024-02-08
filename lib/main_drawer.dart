import 'package:flutter/material.dart';
import 'main.dart';
import 'category.dart';
import 'category_mealscreen.dart';
import 'category_item.dart';

class appDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function taphandler) {
    return ListTile(
      leading: Icon(
        icon,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () => taphandler(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          margin: EdgeInsets.all(10.0),
          height: 120.0,
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.topLeft,
          child: Card(
            child: Text(
              'Cooking UP !',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
        Divider(
          color: Colors.black,
          thickness: 2.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        buildListTile(
          'Meals',
          Icons.restaurant,
          () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        buildListTile('Filter', Icons.filter, () {
          Navigator.of(context).pushReplacementNamed('/filter_screen');
        }),
      ]),
    );
  }
}
