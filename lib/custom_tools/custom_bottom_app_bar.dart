import 'package:flutter/material.dart';
import 'package:ui_fight_app/custom_tools/custom_biuilder.dart';
import 'package:ui_fight_app/custom_tools/custom_size.dart';
import 'package:ui_fight_app/screen/home_screen.dart';

import 'custom_shap_cliper.dart';

class WatchList extends StatefulWidget {
  const WatchList({Key? key}) : super(key: key);

  @override
  State<WatchList> createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: CustomShapCliper(),
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              firstColor,
                              secondColor,
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 95,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 100),
                                    child: Text(
                                      "Search Result",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              addVerticalSpace(25),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: 20,
                  bottom: 35,
                  child: Container(
                    width: 350,
                    height: 100,
                    child: Material(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Beston (BOS)",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 1,
                                      width: 200,
                                      color: Colors.black,
                                    ),
                                    addHorizontalSpace(50),
                                    Icon(Icons.arrow_upward_sharp),
                                    Icon(Icons.arrow_downward_sharp),
                                  ],
                                ),
                                Text(
                                  "New York City (JFK)",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                      elevation: 5,
                    ),
                  ),
                ),
              ],
            ),
            addVerticalSpace(20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Best Deals for Next 6 Month",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  addVerticalSpace(10),
                  DiscountFlat(
                    text1: "\$4,159",
                    text2: "(\$9,999)",
                    text3: "April 2022",
                    text4: "Cathay Pacific",
                    text5: "4.6",
                    text6: "55%",
                    icon1: Icons.calendar_month,
                    icon2: Icons.airplanemode_active,
                    icon3: Icons.star,
                  ),
                  addVerticalSpace(10),
                  DiscountFlat(
                    text1: "\$5,199",
                    text2: "(\$6,999)",
                    text3: "Fab 2022",
                    text4: "American Airlines",
                    text5: "4.3",
                    text6: "15%",
                    icon1: Icons.calendar_month,
                    icon2: Icons.airplanemode_active,
                    icon3: Icons.star,
                  ),
                  addVerticalSpace(10),
                  DiscountFlat(
                    text1: "\$6,599",
                    text2: "(\$7,999)",
                    text3: "Jan 2022",
                    text4: "Jet Airways",
                    text5: "4.4",
                    text6: "20%",
                    icon1: Icons.calendar_month,
                    icon2: Icons.airplanemode_active,
                    icon3: Icons.star,
                  ),
                  addVerticalSpace(10),
                  DiscountFlat(
                    text1: "\$7,099",
                    text2: "(\$8,999)",
                    text3: "April 2022",
                    text4: "Bristish Airlines",
                    text5: "4.8",
                    text6: "20%",
                    icon1: Icons.calendar_month,
                    icon2: Icons.airplanemode_active,
                    icon3: Icons.star,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
