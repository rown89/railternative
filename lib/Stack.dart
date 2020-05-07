import 'package:flutter/material.dart';
import './screens/menu/Menu.dart';
import './screens/home/Home.dart';
import './screens/film/Film.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MenuPage(),
          FilmPage(),
          HomePage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.clear_all),
          backgroundColor: Colors.lightBlue,
        ),
    );
  }
}
