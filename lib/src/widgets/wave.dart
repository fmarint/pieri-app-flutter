import 'package:flutter/material.dart';
import 'package:pieri_app/src/widgets/wave_clipper.dart';

class Wave extends StatefulWidget {
  const Wave({
    Key? key,
    this.heightPrimary = 100.0,
    this.heightSecondary = 130.0
  }) : super(key: key);

  final double heightPrimary;
  final double heightSecondary;

  @override
  // ignore: library_private_types_in_public_api
  _WaveState createState() => _WaveState();
}

class _WaveState extends State<Wave> {

  // final Color _colorRedPp = const Color.fromARGB(255, 173, 20, 56);
  final Color _colorRedPp = const Color.fromARGB(255, 44, 129, 95);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            color: Color.fromARGB(255, 211, 235, 219),
            height: widget.heightSecondary ,
          ),
        ),
        ClipPath(
          clipper: WaveClipper(), //set our custom wave clipper.
          child: Container(
            padding: const EdgeInsets.only(bottom: 50),
            color: _colorRedPp,
            height: widget.heightPrimary,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
