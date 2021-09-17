import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

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
          title: const Padding(
              padding: EdgeInsets.only(left: 16, top: 40, right: 16),
              child: Text(
                'Список\nинтересных мест',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height: 1.125),
                textAlign: TextAlign.left,
              )),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 40 + 72,
        ),
        body: SingleChildScrollView(
          child: Column(
              children: mocks
                  .map((mock) => Padding(
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                        child: SightCard(sight: mock),
                      ))
                  .toList()),
          padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
        ));
  }
}
