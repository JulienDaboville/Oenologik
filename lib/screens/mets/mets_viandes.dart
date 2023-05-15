import 'package:flutter/material.dart';

class mets_viandes extends StatefulWidget {
  const mets_viandes({super.key});

  @override
  State<mets_viandes> createState() => _mets_viandesState();
}

class _mets_viandesState extends State<mets_viandes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 237, 222),
      appBar: AppBar(
        title: Container(
            width: 160,
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text('Viandes',
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
            Text("Les vins compatibles avec la viande :\n",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center),
            Image.asset('assets/images/viandes.jpg'),
            Text(
                "\nLorsque vous choisissez un vin pour accompagner votre plat de viande, il est important de considérer la saveur et la texture de la viande, ainsi que la méthode de cuisson. \nLes vins rouges sont généralement le choix le plus populaire pour accompagner la viande en raison de leur structure tannique qui complémente bien la texture de la viande. \n\nVoici quelques exemples de vins rouges qui se marient bien avec certains types de viande :",
                style: const TextStyle(height: 1.35, fontSize: 16),
                textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: "\n • Cabernet Sauvignon :",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            " ce vin corsé se marie bien avec les viandes rouges comme le boeuf et l'agneau.",
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
                    text: "• Merlot :",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            " un vin rouge plus doux qui se marie bien avec les viandes rouges plus tendres comme le veau et le porc.",
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
                            " ce vin rouge léger se marie bien avec les viandes plus légères comme le poulet et le lapin.",
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
