import 'package:flowSure/ui/exercise_section/modules/best_recommended.dart';
import 'package:flutter/material.dart';

import 'package:flowSure/ui/exercise_section/screens/third_screen.dart';

class VerticalListItem extends StatelessWidget {
  final int index;
  VerticalListItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ExerciseDetailsScreen.routeName,
              arguments: {
                'id': bestMovieList1[index].id,
                'title': bestMovieList1[index].title,
                'imageUrl': bestMovieList1[index].imageUrl,
                'description': bestMovieList1[index].description,
                'rating': bestMovieList1[index].rating,
                'year': bestMovieList1[index].year,
                'duration': bestMovieList1[index].duration,
              },
            );
          },
          child: Card(
            color: Colors.blueGrey[50],
            elevation: 5,
            child: Row(
              children: <Widget>[
                Hero(
                  tag: bestMovieList1[index].id,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          bestMovieList1[index].imageUrl,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        bestMovieList1[index].title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 180,
                        child: Text(
                          bestMovieList1[index].rating,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
