import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyFirstApp extends StatelessWidget {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print("Counter: ${++counter}");
    return Container(child: Center(child: Text('Hello!')));
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print("Counter: ${++counter}");
    return Container(child: Center(child: Text('Hello State!')));
  }
}
