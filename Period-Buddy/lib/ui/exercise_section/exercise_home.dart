import 'package:flutter/material.dart';

import 'package:flowSure/ui/exercise_section/screens/second_screen.dart';
import 'package:flowSure/ui/exercise_section/screens/second_screen_yoga.dart';
import 'package:flowSure/ui/exercise_section/screens/second_screen_bestrecommended.dart';
import 'package:flowSure/ui/exercise_section/screens/second_screen_upperbody.dart';
import 'package:flowSure/ui/exercise_section/widgets/bottom_navbar.dart';
import 'package:flowSure/ui/exercise_section/widgets/category_card.dart';
import 'package:flowSure/ui/exercise_section/widgets/category_card1.dart';

import 'package:flowSure/ui/exercise_section/widgets/search_bar.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:swipedetector/swipedetector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flowSure/ui/exercise_section/modules/tips.dart';
import 'package:flowSure/ui/exercise_section/widgets/sidedrawlist.dart';

class Exercise extends StatefulWidget {
  @override
  _ExerciseState createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  FSBStatus status;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red[50],
        body: SwipeDetector(
          onSwipeRight: () {
            setState(() {
              status = FSBStatus.FSB_OPEN;
            });
          },
          onSwipeLeft: () {
            setState(() {
              status = FSBStatus.FSB_CLOSE;
            });
          },
          child: FoldableSidebarBuilder(
              drawerBackgroundColor: Colors.pink[300],
              status: status,
              drawer: CustomDrawer(),
              screenContents: HomeScreen()),
        ),
        // floatingActionButton: FloatingActionButton.extended(
        //   backgroundColor: Colors.pink,
        //   onPressed: () {
        //     setState(() {
        //       status = status == FSBStatus.FSB_OPEN
        //           ? FSBStatus.FSB_CLOSE
        //           : FSBStatus.FSB_OPEN;
        //     });
        //   },
        //   icon: Icon(
        //     Icons.filter_vintage,
        //     color: Colors.black,
        //   ),
        //   label: Text("Hacks"),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      bottomNavigationBar: BottomNavBar1(),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Colors.red[50],
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child:
                          Icon(Icons.bubble_chart, color: Colors.purpleAccent),
                    ),
                  ),
                  Text(
                    "Work Out the Pain",
                    style: Theme.of(context).textTheme.headline3.copyWith(
                        fontWeight: FontWeight.bold,
                        fontFamily: "PlayfairDisplay"),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard1(
                          title: "Best Recommended",
                          svgSrc: "assets/icons/Hamburger.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DashboardScreenBestRecommended();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Upperbody and Abdomen",
                          svgSrc: "assets/icons/Excrecises.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DashboardScreen2();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Lowerbody",
                          svgSrc: "assets/icons/Meditation.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DashboardScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard1(
                            title: "Yoga/Meditation",
                            svgSrc: "assets/icons/yoga.svg",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return DashboardScreen1();
                                }),
                              );
                            })
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  get kBlueLightColor => null;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/nice1.gif"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Period Hacks',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // FlatButton(
                //   child: Text('View All'),
                //   onPressed: () {},
                // ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              //physics: NeverScrollableScrollPhysics(),
              itemCount: HackList.length,
              itemBuilder: (ctx, i) => VerticalListItem(i),
            ),
          )

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: <Widget>[
          //       Text(
          //         'Top Exercises',
          //         style: TextStyle(
          //           fontSize: 18,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
