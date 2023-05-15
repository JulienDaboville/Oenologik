import 'package:flutter/material.dart';

import 'package:oenologik/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 244, 237, 222),
          fontFamily: 'Righteous'),
      title: "oenologik",
      home:
          const Splash(), //changement de homepage ajout de splash avant ct home2
      debugShowCheckedModeBanner: false,
      routes: const {},
    );
  }
}
