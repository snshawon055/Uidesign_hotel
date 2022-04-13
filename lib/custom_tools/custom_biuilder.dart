import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_size.dart';

class DiscountFlat extends StatelessWidget {
  final String text1, text2, text3, text4, text5, text6;
  final IconData icon1, icon2, icon3;
  const DiscountFlat({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.text6,
    required this.icon1,
    required this.icon2,
    required this.icon3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          height: 120,
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 25,
                      ),
                      child: Row(
                        children: [
                          Text(
                            text1,
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          addHorizontalSpace(10),
                          Text(
                            text2,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 120,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  addHorizontalSpace(8),
                                  Icon(icon1, size: 20),
                                  addHorizontalSpace(5),
                                  Text(
                                    text3,
                                  )
                                ],
                              ),
                            ),
                          ),
                          addHorizontalSpace(10),
                          Container(
                            width: 140,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  addHorizontalSpace(8),
                                  Icon(icon2, size: 20),
                                  addHorizontalSpace(5),
                                  Text(
                                    text4,
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          addHorizontalSpace(10),
                          Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  addHorizontalSpace(8),
                                  Icon(
                                    icon3,
                                    size: 20,
                                  ),
                                  addHorizontalSpace(7),
                                  Text(
                                    text5,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    height: 20,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        text6,
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
