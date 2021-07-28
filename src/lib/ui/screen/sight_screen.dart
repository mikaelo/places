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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: const Text('Список интересных мест'),
          actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})]),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                    fontStyle: FontStyle.normal,
                  )),
              TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter name',
              )),
            ]),
      ),
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: 0, fixedColor: Colors.teal, items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Search",
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: "Add",
          icon: Icon(Icons.add_box),
        )
      ]),
    );
  }
}
