import 'package:flutter/material.dart';
import 'main_drawer.dart';

class FilterApp extends StatefulWidget {
  const FilterApp({super.key});

  @override
  State<FilterApp> createState() => _FilterAppState();
}

class _FilterAppState extends State<FilterApp> {
  bool gulutenfree = false;
  bool lactosefree = false;
  bool vegan = false;
  bool vegetrarian = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FILTER',
        ),
      ),
      drawer: appDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('ADJUST YOUT MEAL SELECTION'),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                    value: gulutenfree,
                    title: Text('Gluten free'),
                    subtitle: Text('Gluten free items'),
                    onChanged: (newvalue) {
                      setState(() {
                        gulutenfree = newvalue;
                      });
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
