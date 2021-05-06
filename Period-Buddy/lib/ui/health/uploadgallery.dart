import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:intl/intl.dart';
import 'health_home.dart';

class UploadPhoto extends StatefulWidget {
  @override
  _UploadPhotoState createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  File sampleImage;
  String _myValue;
  String _myReceipe;
  String _myCalories;
  String _mycooktime;
  String url;
  String _myIng1;
  String _myIng2;
  String _myIng3;
  String _myIng4;
  final formKey = new GlobalKey<FormState>();
  Future getImage() async {
    var tempImage = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      sampleImage = tempImage;
    });
  }

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void goToDisplayPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return new Health();
    }));
  }

  void uploadImage() async {
    if (validateAndSave()) {
      final StorageReference postImageRef =
          FirebaseStorage.instance.ref().child("Suggetsed food Images");
      var timeKey = new DateTime.now();
      final StorageUploadTask uploadTask =
          postImageRef.child(timeKey.toString() + ".jpg").putFile(sampleImage);
      var ImageUrl = await (await uploadTask.onComplete).ref.getDownloadURL();
      url = ImageUrl.toString();
      print("Image Url is  " + url);
      goToDisplayPage();
      saveToDatabase(url);
    }
  }

  void saveToDatabase(url) {
    var dbTimeKey = new DateTime.now();
    var formatDate = new DateFormat('MMM d, yyyy');
    var formatTime = new DateFormat('EEEE, hh:mm aaa');
    String date = formatDate.format(dbTimeKey);
    String time = formatTime.format(dbTimeKey);
    final firestoreInstance = Firestore.instance;
    var data = {
      "image url": url,
      "Food": _myValue,
      "date": date,
      "time": time,
      "Receipe": _myReceipe,
      "Calories": _myCalories,
      "Cookingtime": _mycooktime,
      "Ing": [_myIng1, _myIng2, _myIng3, _myIng4]
    };
    firestoreInstance.collection('Suggested').add(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Receipe"),
          backgroundColor: Colors.orange[400],
          centerTitle: true,
        ),
        body: Center(
            child: sampleImage == null
                ? Container(
                    color: Colors.orange[100],
                    constraints: BoxConstraints.expand(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                    ),
                    padding: const EdgeInsets.all(8.0),

                    //alignment: Alignment.center,
                    child: Column(children: [
                      Image.asset("assets/images/dessert.gif"),
                      SizedBox(height: 20),
                      Container(
                          padding:
                              EdgeInsets.only(top: 20, left: 30, right: 30),
                          child: Text(
                            "Click on the button below to upload your food image.Now, share your special receipe with the world!",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                    ]),
                  )
                : enableUpload()),
        floatingActionButton: FloatingActionButton(
          onPressed: getImage,
          //tooltip: "Add Image",
          child: Icon(Icons.add_a_photo),

          backgroundColor: Colors.orange[400],
        ));
  }

  Widget enableUpload() {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.orange[50],
              Colors.orange[200],
            ], // whitish to gray
            // repeats the gradient over the canvas
          ),
        ),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                Image.file(
                  sampleImage,
                  height: 330.0,
                  width: 460.0,
                ),
                SizedBox(height: 15.0),
                TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Food",
                      //hintText: "Food name",
                      icon: Icon(
                        Icons.cake,
                        color: Colors.orange[400],
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      return value.isEmpty ? "Food name Required" : null;
                    },
                    onSaved: (value) {
                      return _myValue = value;
                    }),
                SizedBox(height: 10),
                TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Main Ingredient1",
                      //hintText: "Receipe",
                      icon: Icon(
                        Icons.local_cafe,
                        color: Colors.orange[400],
                      ),
                    ),
                    maxLines: 1,
                    validator: (value) {
                      return value.isEmpty ? "Ingredient Required" : null;
                    },
                    onSaved: (value) {
                      return _myIng1 = value;
                    }),
                SizedBox(height: 3),
                TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Main Ingredient2",
                      //hintText: "Receipe",
                      icon: Icon(
                        Icons.local_cafe,
                        color: Colors.orange[400],
                      ),
                    ),
                    maxLines: 1,
                    validator: (value) {
                      return value.isEmpty ? "Ingredient Required" : null;
                    },
                    onSaved: (value) {
                      return _myIng2 = value;
                    }),
                SizedBox(height: 3),
                TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Main Ingredient3",
                      //hintText: "Receipe",
                      icon: Icon(
                        Icons.local_cafe,
                        color: Colors.orange[400],
                      ),
                    ),
                    maxLines: 1,
                    validator: (value) {
                      return value.isEmpty ? "Ingredient Required" : null;
                    },
                    onSaved: (value) {
                      return _myIng3 = value;
                    }),
                SizedBox(height: 3),
                TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Main Ingredient4",
                      //hintText: "Receipe",
                      icon: Icon(
                        Icons.local_cafe,
                        color: Colors.orange[400],
                      ),
                    ),
                    maxLines: 1,
                    validator: (value) {
                      return value.isEmpty ? "Ingredient Required" : null;
                    },
                    onSaved: (value) {
                      return _myIng4 = value;
                    }),
                SizedBox(height: 10),
                TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Receipe",
                      //hintText: "Receipe",
                      icon: Icon(
                        Icons.restaurant,
                        color: Colors.orange[400],
                      ),
                    ),
                    maxLines: 2,
                    validator: (value) {
                      return value.isEmpty ? "Receipe Required" : null;
                    },
                    onSaved: (value) {
                      return _myReceipe = value;
                    }),
                SizedBox(height: 10),
                TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Calories",
                      //hintText: "Calories",
                      icon: Icon(
                        Icons.add,
                        color: Colors.orange[400],
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      return value.isEmpty ? "Calories Required" : null;
                    },
                    onSaved: (value) {
                      return _myCalories = value;
                    }),
                SizedBox(height: 10),
                TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Cookingtime",
                      //hintText: "Cookingtime",
                      icon: Icon(
                        Icons.alarm,
                        color: Colors.orange[400],
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      return value.isEmpty ? "Time Required" : null;
                    },
                    onSaved: (value) {
                      return _mycooktime = value;
                    }),
                SizedBox(height: 10),
                RaisedButton(
                  elevation: 10.0,
                  child: Text("Add  receipe"),
                  textColor: Colors.white,
                  color: Colors.orange[400],
                  onPressed: uploadImage,
                ),
              ],
            )),
      ),
    );
  }
}
