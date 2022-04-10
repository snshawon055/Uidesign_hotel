import 'package:flutter/material.dart';

class CustomShapCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);

    var firstEndPoint = Offset(size.width * .5, size.height - 30);
    var firstControllPoint = Offset(size.width * 0.25, size.height - 50.0);
    path.quadraticBezierTo(
      firstControllPoint.dx,
      firstControllPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );
    var secondControllPoint = Offset(size.width * 0.75, size.height - 10);
    var secontEndPoint = Offset(size.width, size.height - 80.0);
    path.quadraticBezierTo(
      secondControllPoint.dx,
      secondControllPoint.dy,
      secontEndPoint.dx,
      secontEndPoint.dy,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
