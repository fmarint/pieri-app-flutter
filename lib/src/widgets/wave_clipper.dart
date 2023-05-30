
import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  var radius = 5.0;
  @override
  Path getClip(Size size) {
    var path = Path();

      path.lineTo(0, size.height * 0.6);
    path.quadraticBezierTo(size.width * 0.2 , size.height * 1.3,size.width * 0.5, size.height /2);

    path.quadraticBezierTo(size.width * 0.75, 0.0, size.width , size.height * 1.0 );
    path.lineTo(size.width , 0);

// Otra Version ------------------
    // path.lineTo( 0, size.height * 0.6 ); 

    // var firstStart = Offset(size.width * 0.2 , size.height * 1.3 );
    // //fist point of quadratic bezier curve
    // var firstEnd = Offset(size.width *0.5, size.height / 2 );
    // //second point of quadratic bezier curve
    // path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    
    // var secondStart = Offset(size.width *0.75 , 0.00);
    // //third point of quadratic bezier curve
    // var secondEnd = Offset(size.width, size.height *1.0);
    // //fourth point of quadratic bezier curve
    // path.quadraticBezierTo( secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    // path.lineTo(
    //     size.width, 0); //end with this path if you are making wave at bottom


    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


  
