import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurveControlPoint = Offset(0, size.height - 20);
    final firstCurveEnd = Offset(30, size.height - 20);
    path.quadraticBezierTo(firstCurveControlPoint.dx, firstCurveControlPoint.dy, firstCurveEnd.dx, firstCurveEnd.dy);

    path.lineTo(size.width - 30, size.height - 20);

    final secondCurveControlPoint = Offset(size.width, size.height - 20);
    final secondCurveEnd = Offset(size.width, size.height);
    path.quadraticBezierTo(secondCurveControlPoint.dx, secondCurveControlPoint.dy, secondCurveEnd.dx, secondCurveEnd.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}