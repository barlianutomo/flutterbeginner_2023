import 'package:flutter/material.dart';
import 'package:urbangardening/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Urban Garden',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}
