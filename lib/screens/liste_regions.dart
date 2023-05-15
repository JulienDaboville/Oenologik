import 'package:flutter/material.dart';
import 'package:oenologik/screens/page_regions.dart';

import 'package:oenologik/screens/vinification.dart';
import 'package:page_transition/page_transition.dart';
import 'package:oenologik/screens/page_regions.dart';

class ListeRegions extends StatelessWidget {
  const ListeRegions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: MyHomePage(title: 'Vins de France'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _reg = [
    'ARMAGNAC',
    'COGNAC',
    'VIN DOUX NATURELS',
    'ALSACE ET EST',
    'BOURGOGNE BEAUJOLAIS SAVOIE JURA',
    'CHAMPAGNE',
    'LANGUEDOC-ROUSSILLON',
    'PROVENCE-CORSE',
    'SUD-OUEST',
    'TOULOUSE-PYRENEES',
    'VAL DE LOIRE',
    'VALLEE DU RHÔNE'
  ];

  String _selectedRegion = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 252, 246),
                    prefixIcon: Icon(Icons.search),
                    labelText: 'Recherche de régions viticoles',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _selectedRegion = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _reg.length,
                  itemBuilder: (context, index) {
                    final region = _reg[index];
                    if (_selectedRegion == null ||
                        region
                            .toLowerCase()
                            .contains(_selectedRegion.toLowerCase())) {
                      return ListTile(
                        title: Text(
                          "\t" + region,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, height: 2),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          Navigator.push(
                              // ANIMATION LORS DU CLIQUE DE LA REGION
                              context,
                              PageTransition(
                                type: PageTransitionType
                                    .rightToLeft, // POUR CHANGER D'ANIMATION
                                child: RegionPage(region: region),
                                childCurrent: const ListeRegions(),
                              ));
                        },
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ],
          ),
          Container(
            height: 105,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage("assets/images/fond_regions.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

    /*
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 244, 237, 222),
        image: DecorationImage(
          image: AssetImage("assets/images/fond_regions.png"),
          alignment: Alignment.bottomCenter,
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Scaffold(
        body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Recherche de régions viticoles',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    _selectedRegion = value;
                  });
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _reg.length,
                itemBuilder: (context, index) {
                  final region = _reg[index];
                  if (_selectedRegion == null ||
                      region
                          .toLowerCase()
                          .contains(_selectedRegion.toLowerCase())) {
                    return ListTile(
                      title: Text(
                        region,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                            // ANIMATION LORS DU CLIQUE DE LA REGION
                            context,
                            PageTransition(
                              type: PageTransitionType
                                  .bottomToTopJoined, // POUR CHANGER D'ANIMATION
                              child: RegionPage(region: region),
                              childCurrent: const liste_regions(),
                            ));
                      },
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
*/