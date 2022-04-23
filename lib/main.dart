import 'package:flutter/material.dart';
import 'package:portfilo/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Arch Portfile',
      debugShowCheckedModeBanner: true,
      home: HomePage(),
    );
  }
}
