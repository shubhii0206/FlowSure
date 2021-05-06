import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

import 'package:flutter/cupertino.dart';

class Food {
  String foodname;
  String calories;

  String time;
  String receipe;
  String id;
  Map food;
  Food(
      {@required this.foodname,
      @required this.calories,
      @required this.time,
      @required this.receipe,
      @required this.id,
      @required this.food});
}

class DatabaseServices {
  String collectionName;
  List<Food> inventory = [];

  DatabaseServices({@required this.collectionName});

  Future<List<Food>> getInventoryData() async {
    print('Inside getInventory Data');
    await Firestore.instance
        .collection(collectionName)
        .getDocuments()
        .then((QuerySnapshot snapshot) {
      snapshot.documents.forEach((item) {
        inventory.add(Food(
            foodname: item.data['Food'],
            calories: item.data['Calories'],
            id: item.documentID,
            food: item.data,
            time: item.data['Cookingtime'],
            receipe: item.data['Receipe']));
      });
    });
    print('Inventory');
    print(inventory);
    return inventory;
  }
}
