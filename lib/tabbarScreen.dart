// import 'package:flutter/material.dart';
// import 'category_screen.dart';
// import 'favorites_screen.dart';

// class TabBarScreen extends StatefulWidget {
//   const TabBarScreen({super.key});

//   @override
//   State<TabBarScreen> createState() => _TabBarScreenState();
// }

// class _TabBarScreenState extends State<TabBarScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Meals'),
//           bottom: TabBar(
//             tabs: [
//               Tab(
//                 icon: Icon(
//                   Icons.category,
//                 ),
//                 text: 'CATEGORIES',
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.star,
//                 ),
//                 text: 'FAVORITES',
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             categoryScreen(),
//             FavoritesScreen(),
//           ],
//         ),
//       ),
//     );
//   }
// }
