import 'package:flutter/material.dart';
import 'package:oenologik/screens/liste_regions.dart';

class Vini extends StatelessWidget {
  final bool isFromliste_regions;
  const Vini({super.key, this.isFromliste_regions = false});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 237, 222),
      appBar: isFromliste_regions
          ? AppBar(
              centerTitle: true,
              backgroundColor: const Color.fromARGB(255, 89, 25, 31),
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
              title: const Text("Vinification"),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          : null,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      //comment est fait le vin rouge
                      child: GestureDetector(
                        onTap: () {
                          // POP UP VIN ROUGE
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        20.0,
                                      ),
                                    ),
                                  ),
                                  child: CustomScrollView(
                                    slivers: <Widget>[
                                      SliverAppBar(
                                        //app bar
                                        pinned: false,
                                        expandedHeight: 150.0,
                                        flexibleSpace: FlexibleSpaceBar(
                                          title: Text(
                                            'Comment est fait le vin rouge',
                                            textAlign: TextAlign.left,
                                            overflow: TextOverflow.visible,
                                          ),
                                        ),
                                        backgroundColor: Color(0xFF8B0000),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(30),
                                          ),
                                        ),
                                      ),
                                      SliverToBoxAdapter(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 8),
                                            Image.asset(
                                              'assets/images/vin_rouge.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                            SizedBox(height: 16),
                                            Text(
                                              '1. Récolte des raisins :  Les raisins sont récoltés à la main ou à la machine, selon le domaine. Les raisins rouges sont récoltés à maturité pour obtenir un taux de sucre et une acidité optimaux.',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Container(
                                              height: 1,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Divider(
                                                color: Color(0xFF8B0000),
                                                thickness: 1,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              '2. Égrappage et foulage : Les grappes de raisins sont égrappées pour retirer les tiges et les feuilles, puis foulées pour éclater les peaux et libérer le jus.',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Container(
                                              height: 1,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Divider(
                                                color: Color(0xFF8B0000),
                                                thickness: 1,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              "3. Sulfitage : Du dioxyde de soufre est ajouté pour éviter l'oxydation et préserver la qualité du vin.",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Container(
                                              height: 1,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Divider(
                                                color: Color(0xFF8B0000),
                                                thickness: 1,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              '4. Fermentation alcoolique : Le jus de raisin est placé dans des cuves en acier inoxydable ou en bois pour la fermentation alcoolique. Les levures naturelles ou sélectionnées transforment le sucre en alcool.',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Container(
                                              height: 1,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Divider(
                                                color: Color(0xFF8B0000),
                                                thickness: 1,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              "5. Pressurage : Le vin est pressé pour extraire le maximum de jus et de saveurs. Les peaux, les pépins et les tiges sont retirés et peuvent être utilisés pour d'autres processus de vinification.",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Container(
                                              height: 1,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Divider(
                                                color: Color(0xFF8B0000),
                                                thickness: 1,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              '6. Sulfitage : Une seconde dose de dioxyde de soufre est ajoutée pour protéger le vin des bactéries et des levures indésirables.',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Container(
                                              height: 1,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Divider(
                                                color: Color(0xFF8B0000),
                                                thickness: 1,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              '7. Assemblage et élevage : Les différents lots de vin sont assemblés pour créer le profil de goût souhaité. Le vin est ensuite élevé dans des fûts de chêne ou des cuves en acier inoxydable pour développer sa complexité et sa texture.',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Container(
                                              height: 1,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Divider(
                                                color: Color(0xFF8B0000),
                                                thickness: 1,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              "8. Collage et mise en bouteille : Le vin est clarifié et filtré à l'aide de produits naturels ou chimiques. Le vin est ensuite mis en bouteille, bouché avec un bouchon de liège ou un bouchon à vis, et étiqueté pour être prêt à la vente.",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(0, 2),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              'Comment est fait le vin rouge',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // POP UP VIN BLANC
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        20.0,
                                      ),
                                    ),
                                  ),
                                  child: CustomScrollView(
                                    slivers: <Widget>[
                                      SliverAppBar(
                                        //app bar
                                        pinned: false,
                                        expandedHeight: 150.0,
                                        flexibleSpace: FlexibleSpaceBar(
                                          title: Text(
                                            'Comment est fait le vin blanc',
                                            textAlign: TextAlign.left,
                                            overflow: TextOverflow.visible,
                                          ),
                                        ),
                                        backgroundColor:
                                            Color.fromARGB(255, 254, 239, 197),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(30),
                                          ),
                                        ),
                                      ),
                                      SliverToBoxAdapter(
                                        child: Column(children: [
                                          SizedBox(height: 8),
                                          Image.asset(
                                            'assets/images/vin_blanc.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(height: 16),
                                          Text(
                                            "1. Récolte des raisins : Les raisins sont récoltés à la main ou à la machine selon le domaine. Pour le vin blanc, la récolte se fait tôt le matin pour éviter l'oxydation et maintenir la fraîcheur des raisins.",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Container(
                                            height: 1,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Divider(
                                              color: Color.fromARGB(
                                                  255, 254, 239, 197),
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '2. Foulage : Les raisins sont foulés pour les briser et libérer leur jus.',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Container(
                                            height: 1,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Divider(
                                              color: Color.fromARGB(
                                                  255, 254, 239, 197),
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '3. Pressurage : Les raisins sont pressés pour extraire leur jus. Pour le vin blanc, seule la partie liquide est utilisée et la peau est retirée immédiatement pour éviter la coloration du jus.',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Container(
                                            height: 1,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Divider(
                                              color: Color.fromARGB(
                                                  255, 254, 239, 197),
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '4. Égouttage du moût : Le jus est laissé au repos pour que les particules solides tombent au fond du récipient.',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Container(
                                            height: 1,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Divider(
                                              color: Color.fromARGB(
                                                  255, 254, 239, 197),
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            "5. Sulfitage : Le jus est traité avec du dioxyde de soufre pour empêcher l'oxydation et la croissance des bactéries.",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Container(
                                            height: 1,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Divider(
                                              color: Color.fromARGB(
                                                  255, 254, 239, 197),
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '6. Clarification : Le jus est clarifié en le laissant reposer pour permettre aux particules solides restantes de se déposer. Il peut également être clarifié par filtration ou centrifugation.',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Container(
                                            height: 1,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Divider(
                                              color: Color.fromARGB(
                                                  255, 254, 239, 197),
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '7. Levurage : Des levures sélectionnées sont ajoutées au jus pour commencer la fermentation alcoolique, qui transforme le sucre en alcool.',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Container(
                                            height: 1,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Divider(
                                              color: Color.fromARGB(
                                                  255, 254, 239, 197),
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '8.Fermentation alcoolique : La fermentation se déroule dans des cuves en acier inoxydable ou en chêne pour préserver les arômes et les saveurs délicates. La température est contrôlée pour optimiser le processus de fermentation.',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Container(
                                            height: 1,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Divider(
                                              color: Color.fromARGB(
                                                  255, 254, 239, 197),
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '9.Sulfatage, stabilisation et collage : Après la fermentation, le vin est traité avec du dioxyde de soufre pour le stabiliser et éviter la croissance de bactéries. Il peut également être clarifié par collage, où des agents de clarification sont ajoutés pour aider les particules solides à se déposer.',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Container(
                                            height: 1,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Divider(
                                              color: Color.fromARGB(
                                                  255, 254, 239, 197),
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '10.Élevage : Le vin est élevé dans des cuves en acier inoxydable ou en fûts de chêne pour développer sa complexité et sa texture. Pendant cette période, le vin peut subir une fermentation malolactique pour adoucir les tanins.',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Container(
                                            height: 1,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Divider(
                                              color: Color.fromARGB(
                                                  255, 254, 239, 197),
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '11.Clarification : Le vin est clarifié à nouveau pour éliminer les particules solides restantes et améliorer sa clarté.',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Container(
                                            height: 1,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Divider(
                                              color: Color.fromARGB(
                                                  255, 254, 239, 197),
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '12.Mise en bouteille : Le vin est mis en bouteille et fermé avec un bouchon de liège ou un bouchon à vis. Il peut ensuite être vieilli en bouteille pour développer sa complexité aromatique.',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ]),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        }, // FIN POP UP VIN BLANC
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(0, 2),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              'Comment est fait le vin blanc',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    // POP UP VIN ROSE
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20.0,
                                ),
                              ),
                            ),
                            child: CustomScrollView(
                              slivers: <Widget>[
                                SliverAppBar(
                                  //app bar
                                  pinned: false,
                                  expandedHeight: 150.0,
                                  flexibleSpace: FlexibleSpaceBar(
                                    title: Text(
                                      'Comment est fait le vin rosé',
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                  backgroundColor:
                                      Color.fromRGBO(255, 192, 203, 1.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(30),
                                    ),
                                  ),
                                ),
                                SliverToBoxAdapter(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 8),
                                      Image.asset(
                                        'assets/images/vin_rose.jpg', //pinterest
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(height: 16),
                                      Text(
                                        '1. Foulage et Eraflage : Les raisins sont écrasés et les rafles sont retirées pour éviter l "amertume',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Container(
                                        height: 1,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Divider(
                                          color: Color.fromRGBO(
                                              255, 192, 203, 1.0),
                                          thickness: 1,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        "2. Pressurage par saignée et Pressurage direct : Le jus est extrait des raisins par pressage. Le pressurage par saignée consiste à laisser le jus s'écouler naturellement avant de retirer les peaux tandis que le pressurage direct consiste à extraire le jus immédiatement après l'écrasement.",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Container(
                                        height: 1,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Divider(
                                          color: Color.fromRGBO(
                                              255, 192, 203, 1.0),
                                          thickness: 1,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        '3.Le jus est clarifié pour éliminer les particules solides.',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Container(
                                        height: 1,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Divider(
                                          color: Color.fromRGBO(
                                              255, 192, 203, 1.0),
                                          thickness: 1,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        '4. Fermentation : Le jus est fermenté à basse température pour préserver les arômes et les saveurs délicates. La fermentation peut être réalisée en cuve ou en fût de chêne.',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Container(
                                        height: 1,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Divider(
                                          color: Color.fromRGBO(
                                              255, 192, 203, 1.0),
                                          thickness: 1,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        '5. Élevage en fût ou en cuve : Le vin est laissé à maturer pour développer sa complexité et sa texture. Certains vins rosés sont élevés en fût de chêne pour obtenir des arômes de vanille et de noisette.',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Container(
                                        height: 1,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Divider(
                                          color: Color.fromRGBO(
                                              255, 192, 203, 1.0),
                                          thickness: 1,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        "6. Mise en bouteille : Le vin est mis en bouteille et fermé avec un bouchon de liège ou un bouchon à vis. Certains vins rosés peuvent être consommés jeunes tandis que d'autres peuvent être vieillis en bouteille pour développer leur complexité aromatique.",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Container(
                                        height: 1,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Divider(
                                          color: Color.fromRGBO(
                                              255, 192, 203, 1.0),
                                          thickness: 1,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        '7. Embouteillage : Le vin est mis en bouteille et fermé avec un bouchon de liège ou un bouchon à vis.',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Container(
                                        height: 1,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Divider(
                                          color: Color.fromRGBO(
                                              255, 192, 203, 1.0),
                                          thickness: 1,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        '8. Vieillissement : Certains vins blancs peuvent être vieillis en bouteille pour développer leur complexité aromatique.',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  }, // FIN POPUP VIN ROSé
                  child: Container(
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
                    child: const Center(
                      child: Text(
                        'Comment est fait le vin rosé',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "AIDE CERTIFICATION:",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                // TOUTES LES CERTIFICATION
                // PRIS SUR : http://lesgrappes.leparisien.fr/certifications-vin-france/

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Agriculture Biologique'),
                          content: const Text(
                            'La certification Agriculture Biologique s’applique lorsqu’un viticulteur n’utilise ni produit chimique (de “synthèse”), ni OGM (Organisme Génétiquement Modifié), et que la production inclut le recyclage des déchets. Seuls les engrais et pesticides d’origine naturelle sont autorisés. Être certifié bio signifie plus globalement protéger la vigne en luttant contre les nuisibles par des agents biologiques, préserver les ressources naturelles, respecter l’environnement et développer la biodiversité. Aujourd’hui, la certification bio porte sur les raisins et l’ensemble du processus de vinification comme les pratiques œnologiques qui sont encadrées. Ainsi, le label AB est reconnu en France, alors que le logo “Eurofeuille” est reconnu à l’échelle européenne.',
                            textAlign: TextAlign.justify,
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/cert_AB.png', //AGRICULTURE BIOLOGIQUE
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Biodynamie'),
                          content: const Text(
                            'La certification Biodynamie respecte le cahier des charges Demeter (ou Biodyvin) reconnu au niveau international. Être certifié Biodynamie, c’est respecter l’équilibre entre le bien-être de l’Homme et l’écosystème de la vigne (et de la vinification) grâce des interventions homéopathiques et à des limites fixées concernant les intrants et additifs comme le soufre. L’utilisation d’intrants est réduite au minimum voire inexistante. Les levures, responsables de la fermentation alcoolique, sont obligatoirement des levures indigènes (c’est-à-dire, issue d’un milieu naturel). Les vins cultivés en biodynamie peuvent suivre des cycles naturels comme ceux de la Lune, des planètes ou des astres . Ainsi, les vignerons travaillent les vignes selon les jours ces influences qui définissent les jours “fruits, feuilles, fleurs ou racines”. Par exemple, la taille de la vigne s’effectue lorsque la lune est descendante.',
                            textAlign: TextAlign.justify,
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/cert_biodynamie.png', //BIODYNAMIE
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Haute Valeur Environnementale'),
                          content: const Text(
                            'La certification HVE (Haute Valeur Environnementale) encadre les pratiques des domaines viticoles et plus particulièrement sur ses aspects environnementaux. HVE est issue de la Certification Environnementale des Exploitations qui comporte 3 niveaux : seules les exploitations respectant le niveau 3 sont alors certifiées HVE.\n\n\u2022 Le niveau 1 correspond au respect de la réglementation environnementale au sens large. \n \n\u2022 Le niveau 2 porte sur la mise en place de bonnes pratiques au sein du domaine : préservation de la biodiversité, stratégie phytosanitaire, fertilisation et gestion de l’irrigation.\n\n\u2022 A la suite des moyens et pratiques mis en place, le niveau 3 valide l’efficacité de ces différents indicateurs environnementaux.\n\nPour résumer : la certification interdit ou limite l’utilisation d’un certain nombre d’intrants, s’assure de la santé et sécurité au travail, la qualité des sols (irrigation, fertilité) ainsi que de la gestion des déchets.',
                            textAlign: TextAlign.justify,
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/cert_HVE.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Nature'),
                          content: const Text(
                              'Le vin nature ou naturel n’avait jusqu’à lors aucune reconnaissance officielle, en France, en Europe et partout dans le monde. Ce vin a eu besoin d’un engagement clair et audible de la part des différents acteurs. Après 10 ans de négociations, la certification “Vin méthode nature’” est née. Avec un cahier des charges en 12 points, un vin méthode nature est un vin issu de raisins biologiques vendangés à la main, vinifiés sans intrant et sans aucune technique d’œnologie corrective. Il existe aujourd’hui 2 labels Vin Méthode Nature : \n\n\u2022 Vin Méthode Nature Sans Sulfites ajoutés\n\u2022 Vin Méthode Nature < 30mg/L de sulfites\n\n\u2022 Voici les différents axes correspondant à un cahier des charges simple et clair :\n\n100% raisins issus d’agriculture biologique\n\u2022 Vendanges manuelles\n\u2022 Vinification unique avec des levures indigènes\n\u2022 Aucun intrant\n\u2022 Absence ou limitation des sulfites ajoutés\nAucune technique de modification'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/cert_nature.png', //NATURE
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Terra Vitis'),
                          content: const Text(
                              'Fondée sur les 3 piliers du Développement Durable (économique, sociale,  et environnementale), cette certification officiellement reconnue par le Ministère de l’Agriculture vise à répondre aux attentes des consommateurs tout en préservant leur santé ainsi qu’à respecter l’environnement et les terroirs régionaux. Un diagnostic d’entrée est effectué au sein de l’exploitation afin d’évaluer les pratiques actuelles du domaine viticole. Ce diagnostic permet d’établir une liste d’actions à mener avant l’audit de certification Terra Vitis.\n\nPour résumer : la certification interdit ou limite l’utilisation d’un certain nombre d’intrants, s’assure de la santé et sécurité au travail, la qualité des sols (irrigation, fertilité) ainsi que de la gestion des déchets.'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/cert_TerraVitis.png', //TERRA VITIS
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 65.0, bottom: 70.0),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Vegan'),
                            content: const Text(
                                'Pour de nombreux viticulteurs, être certifié Vegan est un signe d’engagement, de prise de conscience, de considération et d’adaptation aux changements de mode de vie de certains consommateurs. Pour les plus engagés, aucun animal n’est autorisé au domaine viticole. Ni éco-pâturage avec des moutons ni chevaux labourant les terres. Ainsi, l’exploitation animale est interdite du travail des vignes jusqu’à la cave et la mise en bouteilles (colle étiquettes). Plus couramment, la certification EVE ne limite que les intrants et laisse le choix au vignerons d’inclure des animaux pour le travail des vignes. Dans la certification Vegan, les intrants refusés sont les levures et enzymes contenant des graisses animales ou agents de clarification animale comme le traditionnel blanc d’œuf. Certaines matières œnologiques paraissent plus exotiques comme la colle de poisson ou le sang de bœuf. Des alternatives conformes au veganisme sont ainsi proposées comme l’utilisation de bentonite (argile minérale), la colle de pois ou de pomme de terre (protéines végétales) : suite à ces ajustements, des contrôles de conformité se déroulent post-récolte.'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/images/cert_Vegan.png', //VEGAN
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 57.0, bottom: 70.0),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title:
                                const Text('Viticulture durable en Champagne'),
                            content: const Text(
                                'La viticulture durable en Champagne est l’application à la viticulture des principes du développement durable. L’objectif est de réduire l’impact des pratiques viticoles sur l’environnement : air, climat, eau, sol, biodiversité et paysages sont ainsi protégés. Elle reprend également l’ensemble de la certification HVE. A titre d’exemple, à l’horizon 2025, la certification s’engage à n’utiliser aucun herbicide et, à l’horizon 2050, l’empreinte carbone ferait l’objet d’une réduction de 75%. Officiellement reconnue par le Ministère de l’Agriculture depuis 2015, cette démarche volontaire s’appuie sur l’engagement des viticulteurs champenois et s’article autour de 3 axes d’actions :\n\n\u2022 Empreinte Biodiversité\n\u2022 Empreinte Carbone\n\u2022 Empreinte Eau'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/images/cert_VDC.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/fond_vini.png"),
              alignment: Alignment.bottomCenter,
              fit: BoxFit.fitWidth),
        ),
      ),
    ));
  }
}
