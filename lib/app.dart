import 'package:flutter/material.dart';
import 'package:training/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(brightness: Brightness.dark),
      home: const Home(),
    );
  }
}
