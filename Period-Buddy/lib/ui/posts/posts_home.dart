import 'package:flutter/material.dart';
import 'package:flowSure/ui/layouts/navbar.dart';
class PostsHome extends StatefulWidget {
  @override
  _PostsHomeState createState() => _PostsHomeState();
}

class _PostsHomeState extends State<PostsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text("Posts Section"),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
