import 'package:flutter/material.dart';
import 'package:list_title/di/setup_locator.dart';
import 'package:list_title/screens/list_screen.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ListScreen(),
    );
  }
}
