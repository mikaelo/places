import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      titleSpacing: 0,
      title: Padding(
          padding: EdgeInsets.only(left: 16, top: 40, right: 16),
          child: RichText(
              text: TextSpan(
                  children: [
                TextSpan(
                  text: "С",
                  style: TextStyle(color: Colors.green),
                ),
                TextSpan(
                  text: "писок",
                ),
                TextSpan(text: "\n"),
                TextSpan(
                  text: "и",
                  style: TextStyle(color: Colors.yellow),
                ),
                TextSpan(text: "нтересных мест")
              ],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      height: 1.125)))),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      toolbarHeight: 40 + 72,
    ));
  }
}
