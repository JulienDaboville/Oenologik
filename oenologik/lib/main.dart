import 'package:flutter/material.dart';
import 'package:geojson/geojson.dart';
import 'package:oenologik/screens/map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Map(),
    );
  }
}
*