import 'package:flutter/material.dart';

class mets_poissons extends StatefulWidget {
  const mets_poissons({super.key});

  @override
  State<mets_poissons> createState() => _mets_poissonsState();
}

class _mets_poissonsState extends State<mets_poissons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 237, 222),
      appBar: AppBar(
        title: Container(
            width: 160,
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text('Poissons',
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
            Text("Les vins compatibles avec le poisson :\n",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center),
            Image.asset('assets/images/poissons.jpg'),
            Text(
                "\nLorsque vous choisissez un vin pour accompagner votre plat de poisson, il est important de considérer la saveur et la texture du poisson, ainsi que la méthode de cuisson. Contrairement à la viande, les vins blancs sont généralement le choix le plus populaire pour accompagner le poisson en raison de leur acidité qui complémente bien la saveur délicate du poisson. \n\nVoici quelques exemples de vins blancs qui se marient bien avec certains types de poisson :",
                style: const TextStyle(height: 1.35, fontSize: 16),
                textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: "\n • Sauvignon Blanc :",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            " ce vin blanc sec se marie bien avec les poissons blancs, comme le cabillaud et la sole.",
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
                            " ce vin blanc léger et fruité se marie bien avec les fruits de mer, comme les huîtres et les moules.",
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
                    text: "• Riesling :",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            " un vin blanc légèrement sucré qui se marie bien avec les poissons grillés et épicés.",
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
