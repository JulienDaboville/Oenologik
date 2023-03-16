import 'package:flutter/material.dart';
import 'package:geojson/geojson.dart';
import 'package:oenologik/screens/region.dart';

class Map extends StatelessWidget {
  const Map({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Next'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Region(
                title: 'regions',
              );
            }));
          },
        ),
      ),
    );
  }
}
