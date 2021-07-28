import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Places',
      home: SightListScreen(),
    );
  }
}
