import 'package:flutter/material.dart';
import 'package:ui_fight_app/custom_tools/choise_path.dart';
import 'package:ui_fight_app/custom_tools/custom_bottom.dart';
import 'package:ui_fight_app/custom_tools/custom_bottom_app_bar.dart';
import 'package:ui_fight_app/custom_tools/custom_size.dart';

import '../custom_tools/custom_shap_cliper.dart';

var firstColor = Color(0xFFF47D15);
var secondColor = Color(0xFFEF772C);

final ThemeData appTheme = ThemeData(
  primaryColor: Color(0xFFF3791A),
  fontFamily: "Oxygen",
);
List<String> locations = ["Boston (BOS)", "New York City (JFK)"];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  final screens = [
    Column(
      children: [
        const HomeScreenTopPart(),
        homeScreenBottomPart,
      ],
    ),
    Center(
      child: Text("Deals"),
    ),
    Center(
      child: Text("Novigation"),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomAppBar(),
      body: screens[index],
    );
  }
}

const TextStyle dropDownLabelStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
);
const TextStyle dropDownMenuItemStyle = TextStyle(
  color: Colors.black,
  fontSize: 18,
);

class HomeScreenTopPart extends StatefulWidget {
  const HomeScreenTopPart({Key? key}) : super(key: key);

  @override
  State<HomeScreenTopPart> createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  var selectedLocationIndex = 0;
  bool isFlightSelected = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: CustomShapCliper(),
          child: Container(
            height: 420,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  firstColor,
                  secondColor,
                ],
              ),
            ),
            child: Column(
              children: [
                addVerticalSpace(50),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                    ),
                    addHorizontalSpace(16),
                    PopupMenuButton(
                      child: Row(
                        children: [
                          Text(
                            locations[0],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuItem<int>>[
                        PopupMenuItem(
                          child: Text(
                            locations[0],
                            style: dropDownMenuItemStyle,
                          ),
                          value: 0,
                        ),
                        PopupMenuItem(
                          child: Text(
                            locations[1],
                            style: dropDownMenuItemStyle,
                          ),
                          value: 1,
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 15,
                      ),
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                addVerticalSpace(50),
                Text(
                  "Where would\nyou want to go?",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                addVerticalSpace(30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    child: TextField(
                      controller: TextEditingController(
                        text: "Type of search",
                      ),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Material(
                          borderRadius: BorderRadius.circular(30),
                          elevation: 5.0,
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        contentPadding: EdgeInsets.only(
                          left: 15,
                          top: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isFlightSelected = true;
                          });
                        },
                        child: ChoicePath(
                          icon: Icons.flight_takeoff,
                          text: "Flights",
                          isSelected: isFlightSelected,
                        ),
                      ),
                      addHorizontalSpace(15),
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isFlightSelected = false;
                          });
                        }),
                        child: ChoicePath(
                          icon: Icons.hotel,
                          text: "Hotels",
                          isSelected: !isFlightSelected,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
