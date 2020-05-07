import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);
  
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Menu"
      )
    );
  }
}
