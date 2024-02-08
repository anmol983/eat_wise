import 'package:flutter/material.dart';
import 'meal.dart';
import 'meal_screen_detail.dart';

class Mealitem extends StatelessWidget {
  final String? id;
  final String? title;
  final String? imageUrl;
  final int? duration;
  final Complexity? complexity;
  final Affordability? affordability;
  final Function? Removeitem;
  Mealitem({
    this.id,
    this.title,
    this.imageUrl,
    this.duration,
    this.complexity,
    this.affordability,
    this.Removeitem,
  });
  String get complexitytest {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'unknown';
    }
  }

  String get affordabilitytest {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      default:
        return 'unknown';
    }
  }

  void selecteditem(BuildContext context) {
    Navigator.of(context)
        .pushNamed('/meal_screen_detail', arguments: id)
        .then((result) {
      if (result != null) {
        Removeitem!(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selecteditem(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5.0,
        margin: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(20.0),
                  ),
                  child: Image.network(
                    imageUrl!,
                    height: 250.0,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  right: 10.0,
                  left: 10.0,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.black54,
                    width: 10.0,
                    child: Text(
                      title!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.schedule),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(duration!.toString() + 'min'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.work),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(complexitytest),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.currency_rupee),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(affordabilitytest),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
