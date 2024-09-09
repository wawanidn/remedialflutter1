import 'package:flutter/material.dart';
import 'package:remedialflutter1/GroceryApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Groceryapp(),
    );
  }
}