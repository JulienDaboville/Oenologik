import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Degu extends StatefulWidget {
  const Degu({super.key});

  @override
  _DeguState createState() => _DeguState();
}

class _DeguState extends State<Degu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 244, 237, 222),
            body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/fond_degu.png"),
                      alignment: Alignment.bottomCenter,
                      fit: BoxFit.fitWidth),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 80.0),
                  child: ListView(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      alignment: Alignment.center,
                      width: 400,
                      height: 180,
                      child: SizedBox(
                        width: 400,
                        height: 180,
                        child: Image.asset(
                          "assets/images/mesconseils.png",
                        ),
                      ),
                    ),
                    buildCard("Comment l'ouvrir",
                        "• Assurez-vous que la bouteille soit bien placée sur une surface plane avant de retirer le haut de la capsule en dessous du goulot de la bouteille. \n\n• Ensuite, retirez le bouchon en faisant attention de ne pas l'abîmer et de ne pas le faire tomber dans la bouteille. \n\n• Utilisez un tire-bouchon si nécessaire. \n\n• Servez le vin dans un verre à vin approprié pour maximiser la dégustation."),
                    buildCard('La conservation',
                        "• Assurez-vous que la bouteille soit bien stockée dans un endroit frais et sec. \n\n• Évitez de stocker la bouteille à proximité d'une source de chaleur ou de lumière directe du soleil. \n\n• Stockez les bouteilles de vin couchées, afin que le bouchon reste humide et empêche l'air d'entrer. \n\n• Conservez les vins rouges à température ambiante et les vins blancs au réfrigérateur. \n\n• Ne conservez pas une bouteille de vin ouverte pendant plus de quelques jours."),
                    buildCard('La degustation',
                        "• Servez le vin à la bonne température, selon le type de vin.\n\n• Utilisez un verre à vin adapté pour maximiser la dégustation.\n\n• Laissez le vin respirer avant de le déguster pour permettre aux arômes de se développer.\n\n• Goûtez le vin en plusieurs étapes pour apprécier tous les aspects de sa saveur. \n\n• Servez les vins dans un ordre approprié pour maximiser la dégustation."),
                    buildCard('La manipulation',
                        "• Évitez de secouer ou de brusquer la bouteille de vin, car cela peut perturber les sédiments et affecter la saveur du vin.\n\n• Tenez la bouteille par le corps, plutôt que par le goulot, pour éviter de chauffer le vin avec la chaleur de votre main.  \n\n• Évitez de toucher le bouchon avec vos doigts, car cela peut transférer des huiles et altérer le goût du vin. \n\n• Nettoyez les verres à vin avant de les utiliser pour éliminer tout résidu de savon ou de produit de nettoyage qui pourrait affecter la dégustation. \n\n• Utilisez un décanteur pour séparer les sédiments et améliorer la saveur du vin.")
                  ]),
                ))));
  }

  Widget buildCard(
          String titre,
          /*String image,*/ String
              texte) => // enlevez les commentaires si on veut mettre des images au dessus
      ExpandableNotifier(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  /*Image.asset(image),*/
                  ScrollOnExpand(
                    child: ExpandablePanel(
                      theme: ExpandableThemeData(
                          tapBodyToCollapse: true, tapBodyToExpand: true),
                      header: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          titre,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      collapsed: SizedBox.shrink(),
                      expanded: Text(texte,
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      builder: (context, collapsed, expanded) => Padding(
                        padding: EdgeInsets.all(10).copyWith(top: 0),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      );
}

  /*bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;

  void toggleExpand1() {
    setState(() {
      isExpanded1 = !isExpanded1;
    });
  }

  void toggleExpand2() {
    setState(() {
      isExpanded2 = !isExpanded2;
    });
  }

  void toggleExpand3() {
    setState(() {
      isExpanded3 = !isExpanded3;
    });
  }

  void toggleExpand4() {
    setState(() {
      isExpanded4 = !isExpanded4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 244, 237, 222),
            body: Container(
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        alignment: Alignment.center,
                        width: 400,
                        height: 180,
                        child: SizedBox(
                          width: 400,
                          height: 180,
                          child: Image.asset(
                            "assets/images/mesconseils.png",
                          ),
                        ),
                      ),
                      const Spacer(flex: 2),
                      GestureDetector(
                        onTap: toggleExpand1,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                          height: isExpanded1
                              ? 175
                              : 50, // taille du container commment ouvrir
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                top: 10,
                                left: 10,
                                child: Text(
                                  "Comment l'ouvrir",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                right: 5,
                                child: Icon(
                                  isExpanded1 ? Icons.remove : Icons.add,
                                  weight: 30,
                                ),
                              ),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                                height: isExpanded1 ? 300 : 50,
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                                child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(children: [
                                      Container(
                                        height: 30,
                                      ),
                                      Text(
                                        "• Assurez-vous que la bouteille soit bien placée sur une surface plane avant de retirer le haut de la capsule en dessous du goulot de la bouteille. • Ensuite, retirez le bouchon en faisant attention de ne pas l'abîmer et de ne pas le faire tomber dans la bouteille. • Utilisez un tire-bouchon si nécessaire. • Servez le vin dans un verre à vin approprié pour maximiser la dégustation. ",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ])),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: toggleExpand2,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                          height: isExpanded2
                              ? 175
                              : 50, // taille du container conservation
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                top: 10,
                                left: 10,
                                child: Text(
                                  "Conservation",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                right: 5,
                                child: Icon(
                                  isExpanded2 ? Icons.remove : Icons.add,
                                  weight: 30,
                                ),
                              ),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                                height: isExpanded2 ? 300 : 50,
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Column(children: [
                                    Container(
                                      height: 30,
                                    ),
                                    Text(
                                        "• Assurez-vous que la bouteille soit bien stockée dans un endroit frais et sec. • Évitez de stocker la bouteille à proximité d'une source de chaleur ou de lumière directe du soleil. • Stockez les bouteilles de vin couchées, afin que le bouchon reste humide et empêche l'air d'entrer. • Conservez les vins rouges à température ambiante et les vins blancs au réfrigérateur. • Ne conservez pas une bouteille de vin ouverte pendant plus de quelques jours."),
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: toggleExpand3,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                          height: isExpanded3
                              ? 175
                              : 50, // taille du container Degustation
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                top: 10,
                                left: 10,
                                child: Text(
                                  "Degustation",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                right: 5,
                                child: Icon(
                                  isExpanded3 ? Icons.remove : Icons.add,
                                  weight: 30,
                                ),
                              ),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                                height: isExpanded3 ? 300 : 50,
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                                child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(children: [
                                      Container(
                                        height: 30,
                                      ),
                                      Text(
                                        "• Servez le vin à la bonne température, selon le type de vin.                                                                       • Utilisez un verre à vin adapté pour maximiser la dégustation.                                                          • Laissez le vin respirer avant de le déguster pour permettre aux arômes de se développer.      • Goûtez le vin en plusieurs étapes pour apprécier tous les aspects de sa saveur.                            • Servez les vins dans un ordre approprié pour maximiser la dégustation.",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ])),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: toggleExpand4,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                          height: isExpanded4
                              ? 175
                              : 50, // taille du container Manipulation
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                top: 10,
                                left: 10,
                                child: Text(
                                  "Manipulation",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                right: 5,
                                child: Icon(
                                  isExpanded4 ? Icons.remove : Icons.add,
                                  weight: 30,
                                ),
                              ),
                              AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                  height: isExpanded4 ? 300 : 50,
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 12),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(children: [
                                      Container(
                                        height: 30,
                                      ),
                                      Text(
                                        "• Évitez de secouer ou de brusquer la bouteille de vin, car cela peut perturber les sédiments et affecter la saveur du vin.                                   • Tenez la bouteille par le corps, plutôt que par le goulot, pour éviter de chauffer le vin avec la chaleur de votre main.                                            • Évitez de toucher le bouchon avec vos doigts, car cela peut transférer des huiles et altérer le goût du vin.                                                                    • Nettoyez les verres à vin avant de les utiliser pour éliminer tout résidu de savon ou de produit de nettoyage qui pourrait affecter la dégustation.       • Utilisez un décanteur pour séparer les sédiments et améliorer la saveur du vin.",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ]),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/fond_degu.png"),
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.fitWidth),
              ),
            )));
  }
}
*/