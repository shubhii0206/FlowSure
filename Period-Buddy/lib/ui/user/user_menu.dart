import 'package:flowSure/ui/layouts/navbar.dart';
import 'package:flutter/material.dart';

class UserMenu extends StatefulWidget {
  @override
  _UserMenuState createState() => _UserMenuState();
}

class _UserMenuState extends State<UserMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text("User Section"),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}