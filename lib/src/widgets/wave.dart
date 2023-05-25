import 'package:flutter/material.dart';
import 'package:pieri_app/src/widgets/WaveClipper.dart';

class Wave extends StatefulWidget {
  const Wave({Key? key}) : super(key: key);

  @override
  _WaveState createState() => _WaveState();
}

class _WaveState extends State<Wave> {
  final Color _colorRedPp = const Color.fromARGB(255, 173, 20, 56);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //stack overlaps widgets
        ClipPath(
          clipper: WaveClipper(), //set our custom wave clipper
          child: Container(
            color: const Color.fromARGB(19, 180, 41, 41),
            height: 90,
          ),
        ),
        ClipPath(
          //upper clippath with less height
          clipper: WaveClipper(), //set our custom wave clipper.
          child: Container(
            padding: const EdgeInsets.only(bottom: 50),
            color: _colorRedPp,
            height: 70,
            alignment: Alignment.center,
            // child: Text(
            //   "Wave clipper",
            //   style: TextStyle(
            //     fontSize: 18,
            //     color: Colors.white,
            //   ),
            // ),
          ),
        ),
      ],
    );
  }
}
