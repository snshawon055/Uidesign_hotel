import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../screen/home_screen.dart';

var homeScreenBottomPart = Column(
  children: [
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Currently Watched Items",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            "View All(12)",
            style: TextStyle(
              fontSize: 17,
              color: firstColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
    Container(
      height: 210,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: cityCards,
      ),
    ),
  ],
);

List<CityCard> cityCards = [
  CityCard(
    img: "assets/images/lasvegas.jpg",
    cityName: "Las Vegas",
    monthYear: "Apr 2022",
    discount: "45",
    oldPrice: "4299",
    newPrice: "1934",
  ),
  CityCard(
    img: "assets/images/athens.jpg",
    cityName: "Athens",
    monthYear: "Apr 2022",
    discount: "50",
    oldPrice: "9999",
    newPrice: "4999",
  ),
  CityCard(
    img: "assets/images/sydney.jpeg",
    cityName: "Sydney",
    monthYear: "Dec 2022",
    discount: "40",
    oldPrice: "5999",
    newPrice: "2399",
  ),
];
final formetCurrncy = new NumberFormat.simpleCurrency();

class CityCard extends StatelessWidget {
  final String img, cityName, monthYear, discount, oldPrice, newPrice;
  const CityCard({
    Key? key,
    required this.img,
    required this.cityName,
    required this.monthYear,
    required this.discount,
    required this.oldPrice,
    required this.newPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            child: Stack(
              children: [
                Container(
                  height: 210,
                  width: 160,
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  height: 60,
                  width: 160,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.black12,
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  right: 10,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cityName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            monthYear,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          "$discount%",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
