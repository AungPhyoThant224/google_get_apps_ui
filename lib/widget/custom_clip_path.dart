import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    Path path = Path();
    path.moveTo( 0, h * 0.2 );
    path.lineTo( 0, h);
    path.quadraticBezierTo( w * 0.5, h - h* 0.2 , w  , h - h* 0.2);
    path.lineTo( w, 0 );
    path.quadraticBezierTo(w * 0.5, h* 0.2 , 0 , h* 0.2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}