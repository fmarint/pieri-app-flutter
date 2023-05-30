import 'package:flutter/material.dart';

class HomePanel extends StatefulWidget {
  const HomePanel({Key? key}) : super(key: key);

  @override
  _HomePanelState createState() => _HomePanelState();
}

class _HomePanelState extends State<HomePanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // decoration: BoxDecoration(
      //   image: const DecorationImage(
      //     image: AssetImage("assets/images/logo_certificado.png"),
      //     fit: BoxFit.fill,
      //   ),
      //   color: Colors.transparent,
      //   borderRadius: BorderRadius.circular(0.50),
      // ),
      child: const Center(child: Text("Texto HOME")),
    );
  }
}
