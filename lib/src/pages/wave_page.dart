import 'package:flutter/material.dart';

class WavePage extends StatefulWidget {
  const WavePage({Key? key}) : super(key: key);

  @override
  _WavePageState createState() => _WavePageState();
}

class _WavePageState extends State<WavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: CustomPaint(
        painter: _HeaderPaintWaves(),
        child: Container(
          height: 20,
          // decoration: BoxDecoration(border: Border.all()),
        ),
      ),
    );
  }
}

class _HeaderPaintWaves extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
      // ..strokeWidth = 0;

    final path = Path();
    path.lineTo(0, size.height * 0.6);
    path.quadraticBezierTo(size.width * 0.2 , size.height * 1.3,size.width * 0.5, size.height /2);

    path.quadraticBezierTo(size.width * 0.75, 0.0, size.width , size.height * 1.0 );
    path.lineTo(size.width , 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
