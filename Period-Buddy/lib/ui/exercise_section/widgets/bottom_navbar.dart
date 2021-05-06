import 'package:flutter/material.dart';

class BottomNavBar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 30),
      height: 70.0,
      decoration: BoxDecoration(
        color: Color.fromRGBO(240, 132, 182, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
          bottomLeft: Radius.zero,
          bottomRight: Radius.zero,

        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.question_answer,
              size: 40.0,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/posts');
            },
          ),
          IconButton(
              icon: Icon(
                Icons.event_note,
                size: 44.0,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              }),
          IconButton(
              icon: Icon(
                Icons.fastfood,
                size: 44.0,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/health');
              }),
          IconButton(
              icon: Icon(
                Icons.person,
                size: 44.0,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/user');
              }),
        ],
      ),
    );
  }
}
