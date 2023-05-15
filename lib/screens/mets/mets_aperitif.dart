import 'package:flutter/material.dart';

class mets_aperitif extends StatefulWidget {
  const mets_aperitif({super.key});

  @override
  State<mets_aperitif> createState() => _mets_aperitifState();
}

class _mets_aperitifState extends State<mets_aperitif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 237, 222),
      appBar: AppBar(
        title: Container(
            width: 160,
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text('Apéritif',
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
            Text("Les vins compatibles avec l'apéritif :\n",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center),
            Image.asset('assets/images/aperitif.jpg'),
            Text(
                "\nL'apéritif est un moment de détente et de convivialité, généralement accompagné de petites bouchées et de boissons légères. \nLorsque vous choisissez un vin pour accompagner votre apéritif, il est important de choisir un vin frais et léger qui ne dominera pas le goût des amuse-gueules. \n\nVoici quelques exemples de vins blancs qui se marient bien avec l'apéritif :",
                style: const TextStyle(height: 1.35, fontSize: 16),
                textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: "\n• Champagne :",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            " ce vin effervescent et léger est parfait pour l'apéritif, car il est rafraîchissant et stimulant pour les papilles gustatives.",
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
                    text: "• Sauvignon Blanc :",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            " un vin blanc frais et fruité qui se marie bien avec les plats à base de poisson et les fromages de chèvre.",
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
                    text: "• Muscat :",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            " un vin blanc sucré et aromatique qui se marie bien avec les fruits frais et les desserts.",
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
                    text: "• Pinot Grigio :",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            " un vin blanc léger et sec qui se marie bien avec les fruits de mer et les salades légères.",
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
