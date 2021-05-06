import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'foodlist.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'fooddata.dart';
import 'package:flowSure/ui/layouts/navbar.dart';

import 'uploadgallery.dart';

class Health extends StatefulWidget {
  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  final firestoreInstance = Firestore.instance;
  List<Food> filteredfood = List();
  List foodlist = List();
  //var Search_here = "Search for more food categories here";
  String dropdownValue = "Search here";

  // generateListView() {
  //   DatabaseServices(collectionName: 'Italian')
  //       .getInventoryData()
  //       .then((List<Food> items) {
  //     setState(() {
  //       foodlist = items;
  //     });
  //   });
  // }

  Widget buildFoodList(
      BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
    if (snapshot.hasData) {
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: snapshot.data.documents.length,
        itemBuilder: (context, index) {
          DocumentSnapshot food = snapshot.data.documents[index];
          String foodID = food.documentID;

          return GestureDetector(
            onTap: () {
              print(food.data);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => FoodData(
                            food: food.data,
                            foodID: foodID,
                          )));
            },
            child: Card(
              color: Colors.blueGrey[50],
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Hero(
                      tag: foodID,
                      child: Container(
                        padding: EdgeInsets.only(top: 40),
                        height: 170,
                        width: 160,
                        decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey[600],
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                              colors: [
                                Colors.grey[200],
                                Colors.grey[100],
                                Colors.grey[300],
                                Colors.grey[500]
                              ],
                              stops: [
                                0.1,
                                0.3,
                                0.8,
                                0.9
                              ]),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              food.data["image url"],
                            ),
                          ),
                        ),
                      )),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('${food.data['Food']}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 150,
                          child: Text(
                            'Calories: ${food.data['Calories']}',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else if (snapshot.connectionState == ConnectionState.done &&
        !snapshot.hasData) {
      // Handle no data
      return Center(
        child: Text("No users found."),
      );
    } else {
      // Still loading
      return SizedBox(
        height: 25,
        width: 25,
        child: CircularProgressIndicator(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // print('from Home page');
    // print('$name, $address, $mainarea, $phoneno');
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment
                .bottomRight, // 10% of the width, so there are ten blinds.
            colors: [Colors.yellow[100], Colors.blue[50]], // whitish to gray
            //tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        child: ListView(
          children: <Widget>[
            Stack(children: <Widget>[
              Container(height: 300.0),
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/counter.jpg'),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                top: 150.0,
                left: 15.0,
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(70.0),
                      image: DecorationImage(
                          image: AssetImage('assets/images/cake.gif'),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                top: 225.0,
                left: 175.0,
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Yummy Food Time',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Savour Your Cravings',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 12.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(width: 5.0),
                  ],
                ),
              )
            ]),
            SizedBox(width: 15.0),
            Container(
              height: 48,
              width: 270,
              padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 20.0),
              margin: const EdgeInsets.only(
                  left: 60.0, right: 20.0, top: 20, bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey[400])),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: dropdownValue == null
                      ? Text('Tye of Food')
                      : Text(
                          dropdownValue,
                          style: TextStyle(color: Colors.greenAccent),
                        ),
                  value: dropdownValue,
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>[
                    'Period Cravings',
                    'Italian',
                    'Mexican',
                    'Healthy picks',
                    'Spicy',
                    'Suggested',
                    'Search here',
                   
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(20.0),
              child: FutureBuilder(
                  builder: buildFoodList,
                  future: Firestore.instance
                      .collection(dropdownValue)
                      .getDocuments()),
            ),
            Row(children: [
              SizedBox(width: 10),
              Container(
                height: 30.0,
                width: 75.0,
                child: Center(
                  child: Icon(
                    Icons.fastfood,
                    color: Colors.green,
                    size: 40,
                  ),
                ),
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.blueAccent)),
                color: Colors.cyan[300],
                textColor: Colors.black,
                padding: EdgeInsets.all(10.0),

                child: Text(
                  "Share a Receipe",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UploadPhoto()));
                },

                //padding: EdgeInsets.all(5.0),
              ),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
