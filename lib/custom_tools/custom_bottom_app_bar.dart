import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        backgroundColor: Colors.white,
        labelTextStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 16,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      child: NavigationBar(
        animationDuration: Duration(
          seconds: 2,
        ),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        backgroundColor: Colors.white,
        selectedIndex: index,
        onDestinationSelected: (index) {
          setState(() {
            this.index = index;
          });
        },
        height: 70,
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.home,
              color: Colors.black87,
            ),
            label: "Explore",
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: "Watchlist",
          ),
          NavigationDestination(
            icon: Icon(Icons.panorama),
            label: "Deals",
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
        ],
      ),
    );
  }
}
