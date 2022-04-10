import 'package:flutter/material.dart';
import 'package:ui_fight_app/custom_tools/custom_size.dart';

class ChoicePath extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isSelected;
  ChoicePath({
    Key? key,
    required this.icon,
    required this.text,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 18,
      ),
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
            )
          : null,
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.white,
          ),
          addHorizontalSpace(8),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
