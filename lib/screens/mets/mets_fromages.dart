import 'package:flutter/material.dart';

class mets_fromages extends StatefulWidget {
  const mets_fromages({super.key});

  @override
  State<mets_fromages> createState() => _mets_fromagesState();
}

class _mets_fromagesState extends State<mets_fromages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 237, 222),
      appBar: AppBar(
        title: Container(
            width: 160,
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text('Fromages',
                style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 89, 25, 31),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 20,
            ),
            Text("Les vins compatibles avec le fromage :\n",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center),
            Image.asset('assets/images/fromages.jpg'),
            Text(
                "\nPour varier les plaisirs et les combinaisons de vin et de fromage, il est recommandé de tester différentes options en prenant en compte la saveur, la texture et la force du fromage, ainsi que les caractéristiques du vin. Vous pouvez essayer de nouveaux types de fromages ou de vins, ou essayer de combiner des fromages et des vins d'une même région. Il est également possible de jouer avec les textures, en proposant des fromages doux avec des vins tanniques, ou des fromages plus forts avec des vins plus légers. En explorant de nouvelles combinaisons, vous découvrirez des accords surprenants et savoureux qui raviront vos papilles. \n\nVoici quelques exemples de vins  qui se marient bien avec certains types de fromage :",
                style: const TextStyle(height: 1.35, fontSize: 16),
                textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: "\n• Chardonnay :",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            " un vin blanc riche et crémeux qui se marie bien avec les fromages à pâte molle comme le brie et le camembert.",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          height: 1.3,
                        ),
                      ),
                    ]),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: "• Pinot Noir :",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            "  un vin rouge léger et fruité qui se marie bien avec les fromages à pâte molle comme le brie et le camembert, ainsi qu'avec les fromages à pâte dure comme le parmesan.",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          height: 1.3,
                        ),
                      ),
                    ]),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: "• Cabernet Sauvignon :",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            "  un vin rouge corsé qui se marie bien avec les fromages à pâte dure comme le cheddar et le gouda.",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          height: 1.3,
                        ),
                      ),
                    ]),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: "• Porto :",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            " un vin doux et fortifié qui se marie bien avec les fromages à pâte persillée comme le roquefort et le gorgonzola.",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          height: 1.3,
                        ),
                      ),
                    ]),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
