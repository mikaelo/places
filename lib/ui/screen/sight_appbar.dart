import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SightListAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  final Size preferredSize = const Size.fromHeight(40 + 72);
}
