import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App title',
      home: MyStatefulWidget(),
    );
  }
}

class MyFirstApp extends StatelessWidget {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text('Hello!')));
  }

  String getRunType() {
    return "";
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text('Hello State!')));
  }

  String getRunType() {
    return context.runtimeType.toString();
  }
}
