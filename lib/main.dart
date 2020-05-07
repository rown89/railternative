import 'package:flutter/material.dart';
import './Stack.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Railternative',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StackPage(),
    );
  }
}