import 'package:flutter/material.dart';
import 'package:oenologik/screens/vinification.dart';
import 'package:page_transition/page_transition.dart';

class RegionPage extends StatefulWidget {
  final String region;

  const RegionPage({Key? key, required this.region});

  @override
  State<RegionPage> createState() => _RegionPageState();
}

class _RegionPageState extends State<RegionPage> {
  static late Map<String, Widget Function(BuildContext)> _bodyMap;
  void initState() {
    super.initState();
    _bodyMap = {
      'ARMAGNAC': (context) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fond_regions.png"),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                _buildSectionTitle('Types de vin'),
                _buildBulletList([
                  'Blanc sec (commun)',
                  'Eau-de-vie',
                  'Rosé et Rouge (plus rare)'
                ]),
                _buildSectionTitle('Cépages'),
                _buildBulletList(['Ugni Blanc', 'Baco Blanc', 'Colombard']),
                _buildSectionTitle('Description'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "L'armagnac est une eau-de-vie de vin produite dans les départements français du Gers, des Landes et du Lot-et-Garonne. Selon l'INAO, 890 opérateurs (viticulteurs, distillateurs, négociants et caves coopératives) assurent la production de l'armagnac, dont 560 producteurs de raisins indépendants."),
                ),
                _buildSectionTitle('Années'),
                _buildBulletList([
                  '1990',
                  '2000',
                  '2005',
                ]),
                const SizedBox(
                    height: 16), // Ajouter de l'espace pour le bouton
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // ANIMATION LORS DU CLIQUE DE LA REGION
                          context,
                          PageTransition(
                            type: PageTransitionType
                                .rightToLeftWithFade, // POUR CHANGER D'ANIMATION
                            child: const Vini(
                              isFromliste_regions: true,
                            ),
                            childCurrent: const RegionPage(region: 'ARMAGNAC'),
                          ));
                    },
                    child: const Text(
                        'Découvrez comment est faite la vinification'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 89, 25, 31),
                    ),
                  ),
                )
              ],
            ),
          ),
      'COGNAC': (context) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fond_regions.png"),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                _buildSectionTitle('Types de vin'),
                _buildBulletList(['Blanc', 'Eau-de-vie']),
                _buildSectionTitle('Cépages'),
                _buildBulletList(
                    ['Cabernet-blanc', 'Cabernet-sauvignon', 'Folle Blanche']),
                _buildSectionTitle('Description'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "Les vins de cognac sont produits sur les départements de la Charente-Maritime, de la Charente, de la Dordogne et des Deux-Sèvres. Le vignoble de cognac possède une seule appellation viticole AOC, l'appellation Pineau des Charentes. Les Vins Charentais sont à l’image de leur région : des vins de plaisir, parfaits pour accompagner les moments en famille, entre amis, et rappeler les meilleurs souvenirs."),
                ),
                _buildSectionTitle('Années'),
                _buildBulletList([
                  '1990',
                  '2005',
                  '2009',
                ]),
                const SizedBox(
                    height: 16), // Ajouter de l'espace pour le bouton
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // ANIMATION LORS DU CLIQUE DE LA REGION
                          context,
                          PageTransition(
                            type: PageTransitionType
                                .rightToLeftWithFade, // POUR CHANGER D'ANIMATION
                            child: const Vini(
                              isFromliste_regions: true,
                            ),
                            childCurrent: const RegionPage(region: 'COGNAC'),
                          ));
                    },
                    child: const Text(
                        'Découvrez comment est faite la vinification'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 89, 25, 31),
                    ),
                  ),
                )
              ],
            ),
          ),
      'VIN DOUX NATURELS': (context) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fond_regions.png"),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                _buildSectionTitle('Types de vin'),
                _buildBulletList(['Blanc sec', 'Rouge']),
                _buildSectionTitle('Cépages'),
                _buildBulletList(['Grenache', 'Malvoisie', 'Macabéo, Muscat']),
                _buildSectionTitle('Description'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "Le vin doux naturel est un vin muté obtenu par mutage lors de la fermentation alcoolique, le moût en cours de fermentation étant additionné d'alcool éthylique (eau-de-vie de vin essentiellement) pour arrêter sa fermentation afin de conserver sucre résiduel et fruité, tout en augmentant plus ou moins fortement le titre alcoométrique volumique. On distingue les vins doux naturels des autres vins doux par le fait que leur sucre provient exclusivement du raisin et que les levures sont tuées par l'alcool. "),
                ),
                _buildSectionTitle('Années'),
                _buildBulletList([
                  '2007',
                  '2017',
                  '2020',
                ]),
                const SizedBox(
                    height: 16), // Ajouter de l'espace pour le bouton
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // ANIMATION LORS DU CLIQUE DE LA REGION
                          context,
                          PageTransition(
                            type: PageTransitionType
                                .rightToLeftWithFade, // POUR CHANGER D'ANIMATION
                            child: const Vini(
                              isFromliste_regions: true,
                            ),
                            childCurrent:
                                const RegionPage(region: 'VIN DOUX NATURELS'),
                          ));
                    },
                    child: const Text(
                        'Découvrez comment est faite la vinification'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 89, 25, 31),
                    ),
                  ),
                )
              ],
            ),
          ),
      'ALSACE ET EST': (context) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fond_regions.png"),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                _buildSectionTitle('Types de vin'),
                _buildBulletList(['Blanc (commun)', 'Rouge (plus rare)']),
                _buildSectionTitle('Cépages'),
                _buildBulletList(
                    ['Pinot Blanc', 'Sylvaner', 'Muscat', 'Riesling']),
                _buildSectionTitle('Description'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "La complexité géologique de l'Alsace est à l'origine de la multiplicité des sols et de la diversité des terroirs viticoles. Très connu pour ses vendanges tardives, le vignoble d’Alsace est l’un des plus grands producteurs de vins blancs en France. Ce vignoble est très apprécié dans le cadre de l’œnotourisme, et ce, grâce à sa route des vins d’Alsace et du savoir-faire des vignerons. Depuis, une vingtaine d’années, le vignoble se conduit en agriculture biologique et en biodynamie."),
                ),
                _buildSectionTitle('Années'),
                _buildBulletList([
                  '2000',
                  '2007',
                  '2018',
                ]),
                const SizedBox(
                    height: 16), // Ajouter de l'espace pour le bouton
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // ANIMATION LORS DU CLIQUE DE LA REGION
                          context,
                          PageTransition(
                            type: PageTransitionType
                                .rightToLeftWithFade, // POUR CHANGER D'ANIMATION
                            child: const Vini(
                              isFromliste_regions: true,
                            ),
                            childCurrent:
                                const RegionPage(region: 'ALSACE ET EST'),
                          ));
                    },
                    child: const Text(
                        'Découvrez comment est faite la vinification'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 89, 25, 31),
                    ),
                  ),
                )
              ],
            ),
          ),
      'BOURGOGNE BEAUJOLAIS SAVOIE JURA': (context) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fond_regions.png"),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                _buildSectionTitle('Types de vin'),
                _buildBulletList(['Blanc', 'Rouge', 'Rosé']),
                _buildSectionTitle('Cépages'),
                _buildBulletList([
                  'Chardonnay',
                  'Sauvignon',
                  'Pinot Noir Bourgignon',
                  'Gamay'
                ]),
                _buildSectionTitle('Description'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "Avec une superficie en vignes de 51500 hectares, le bassin Bourgogne-Beaujolais-Savoie-Jura, l’un des dix bassins viticoles français, représente 7 % du vignoble national. Ici encore ce sont les Romains qui, les premiers, élevèrent la vigne au Ier siècle. François Ier et Henri IV firent beaucoup pour le développement d'un début d'industrie viticole dans la région."),
                ),
                _buildSectionTitle('Années'),
                _buildBulletList([
                  '2016 (Savoie)',
                  '2018 (Beaujolais)',
                  '2019 (Jura Rouge)',
                ]),
                const SizedBox(
                    height: 16), // Ajouter de l'espace pour le bouton
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // ANIMATION LORS DU CLIQUE DE LA REGION
                          context,
                          PageTransition(
                            type: PageTransitionType
                                .rightToLeftWithFade, // POUR CHANGER D'ANIMATION
                            child: const Vini(
                              isFromliste_regions: true,
                            ),
                            childCurrent: const RegionPage(
                                region: 'BOURGOGNE BEAUJOLAIS SAVOIE JURA'),
                          ));
                    },
                    child: const Text(
                        'Découvrez comment est faite la vinification'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 89, 25, 31),
                    ),
                  ),
                )
              ],
            ),
          ),
      'CHAMPAGNE': (context) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fond_regions.png"),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                _buildSectionTitle('Types de vin'),
                _buildBulletList(['Blanc', 'Rouge', 'Rosé']),
                _buildSectionTitle('Cépages'),
                _buildBulletList(['Chardonnay', 'Pinot Noir', 'Meunier']),
                _buildSectionTitle('Description'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "La Champagne Viticole est une région vallonnée, dessinée. Le vignoble champenois est ce que l’on appelle un “vignoble de coteaux” : les vignes sont majoritairement plantées sur les pentes des collines. La moyenne de l’inclinaison de ces pentes est de 12 %, mais certaines sont très pentues : elles peuvent alors atteindre 59 %... Ce qui peut rendre le travail dans les vignes acrobatique."),
                ),
                _buildSectionTitle('Années'),
                _buildBulletList([
                  '1996',
                  '2002',
                  '2008',
                ]),
                const SizedBox(
                    height: 16), // Ajouter de l'espace pour le bouton
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // ANIMATION LORS DU CLIQUE DE LA REGION
                          context,
                          PageTransition(
                            type: PageTransitionType
                                .rightToLeftWithFade, // POUR CHANGER D'ANIMATION
                            child: const Vini(
                              isFromliste_regions: true,
                            ),
                            childCurrent: const RegionPage(region: 'CHAMPAGNE'),
                          ));
                    },
                    child: const Text(
                        'Découvrez comment est faite la vinification'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 89, 25, 31),
                    ),
                  ),
                )
              ],
            ),
          ),
      'LANGUEDOC-ROUSSILLON': (context) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fond_regions.png"),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                _buildSectionTitle('Types de vin'),
                _buildBulletList(['Blanc', 'Rouge', 'Rosé']),
                _buildSectionTitle('Cépages'),
                _buildBulletList(
                    ['Cabernet Franc', 'Grenache N', 'Syrah', 'Mourvèdre']),
                _buildSectionTitle('Description'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "Le Languedoc-Roussillon est historiquement la plus grande région viticole au monde. Sur les 4 départements (Aude, Gard, Hérault et Pyrénées-Orientales) le vignoble compte 228 000 ha de vignes dont 89000 en AOC."),
                ),
                _buildSectionTitle('Années'),
                _buildBulletList([
                  '1998',
                  '2007',
                  '2017',
                ]),
                const SizedBox(
                    height: 16), // Ajouter de l'espace pour le bouton
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // ANIMATION LORS DU CLIQUE DE LA REGION
                          context,
                          PageTransition(
                            type: PageTransitionType
                                .rightToLeftWithFade, // POUR CHANGER D'ANIMATION
                            child: const Vini(
                              isFromliste_regions: true,
                            ),
                            childCurrent: const RegionPage(
                                region: 'LANGUEDOC-ROUSSILLON'),
                          ));
                    },
                    child: const Text(
                        'Découvrez comment est faite la vinification'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 89, 25, 31),
                    ),
                  ),
                )
              ],
            ),
          ),
      'PROVENCE-CORSE': (context) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fond_regions.png"),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                _buildSectionTitle('Types de vin'),
                _buildBulletList(['Blanc', 'Rouge (commun)', 'Rosé (commun)']),
                _buildSectionTitle('Cépages'),
                _buildBulletList(
                    ['Mourvèdre', 'Grenache', 'Cinsault', 'Syrah']),
                _buildSectionTitle('Description'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "Avec près de 500km de distance, Provence et Corse sont toujours associés lorsqu’on évoque la viticulture. Même si les deux localités sont chacune indépendantes, leur situation géologique les rapproche. Bien que Provence reste principalement le berceau de l’histoire antique de la viticulture française, la Corse occupe également une très grande place. Avec des cépages dont la plupart est gorgée de soleil, Provence-Corse sont les maîtres des rosés frais et des rouges aux notes fabuleuses."),
                ),
                _buildSectionTitle('Années'),
                _buildBulletList([
                  '2007',
                  '2009',
                  '2010',
                ]),
                const SizedBox(
                    height: 16), // Ajouter de l'espace pour le bouton
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // ANIMATION LORS DU CLIQUE DE LA REGION
                          context,
                          PageTransition(
                            type: PageTransitionType
                                .rightToLeftWithFade, // POUR CHANGER D'ANIMATION
                            child: const Vini(
                              isFromliste_regions: true,
                            ),
                            childCurrent:
                                const RegionPage(region: 'PROVENCE-CORSE'),
                          ));
                    },
                    child: const Text(
                        'Découvrez comment est faite la vinification'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 89, 25, 31),
                    ),
                  ),
                )
              ],
            ),
          ),
      'SUD-OUEST': (context) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fond_regions.png"),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                _buildSectionTitle('Types de vin'),
                _buildBulletList([
                  'Blanc sec et moelleux (plus rare)',
                  'Rouge (très commun)',
                  'Rosé (commun)'
                ]),
                _buildSectionTitle('Cépages'),
                _buildBulletList([
                  'Cabernet Sauvignon',
                  'Merlot',
                  'Abouriou',
                  'Cabernet Franc'
                ]),
                _buildSectionTitle('Description'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "Le Sud-ouest est connu pour être à la fois le berceau des cépages océaniques mondiaux et le berceau de cépages autochtones que l’on ne trouve nulle part ailleurs. Les flux migratoires comme les échanges commerciaux ont contribué à la circulation et à la diffusion des cépages."),
                ),
                _buildSectionTitle('Années'),
                _buildBulletList([
                  '2005',
                  '2009',
                  '2014',
                ]),
                const SizedBox(
                    height: 16), // Ajouter de l'espace pour le bouton
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // ANIMATION LORS DU CLIQUE DE LA REGION
                          context,
                          PageTransition(
                            type: PageTransitionType
                                .rightToLeftWithFade, // POUR CHANGER D'ANIMATION
                            child: const Vini(
                              isFromliste_regions: true,
                            ),
                            childCurrent: const RegionPage(region: 'SUD-OUEST'),
                          ));
                    },
                    child: const Text(
                        'Découvrez comment est faite la vinification'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 89, 25, 31),
                    ),
                  ),
                )
              ],
            ),
          ),
      'TOULOUSE-PYRENEES': (context) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fond_regions.png"),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                _buildSectionTitle('Types de vin'),
                _buildBulletList(['Blanc', 'Rouge', 'Rosé']),
                _buildSectionTitle('Cépages'),
                _buildBulletList([
                  'Négrette',
                  'Merlot',
                  'Cabernet Franc',
                  'Syrah',
                  'Fer Servadou'
                ]),
                _buildSectionTitle('Description'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "Le sud-ouest de la France est réputé pour ses produits du terroir, entre gastronomie et bons vins. Si la terre est si généreuse, c’est grâce à sa situation géographique et son climat, propice à l’agriculture et l’élevage. À proximité du Piémont Pyrénéen, le long de la Garonne, ses vallons bénéficient d’un ensoleillement exceptionnel et d’un climat doux, entre tendances océaniques et méditerranéennes."),
                ),
                _buildSectionTitle('Années'),
                _buildBulletList([
                  '1998',
                  '2000',
                  '2005',
                ]),
                const SizedBox(
                    height: 16), // Ajouter de l'espace pour le bouton
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // ANIMATION LORS DU CLIQUE DE LA REGION
                          context,
                          PageTransition(
                            type: PageTransitionType
                                .rightToLeftWithFade, // POUR CHANGER D'ANIMATION
                            child: const Vini(
                              isFromliste_regions: true,
                            ),
                            childCurrent:
                                const RegionPage(region: 'TOULOUSE-PYRENEES'),
                          ));
                    },
                    child: const Text(
                        'Découvrez comment est faite la vinification'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 89, 25, 31),
                    ),
                  ),
                )
              ],
            ),
          ),
      'VAL DE LOIRE': (context) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fond_regions.png"),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                _buildSectionTitle('Types de vin'),
                _buildBulletList(['Blanc', 'Rouge', 'Rosé']),
                _buildSectionTitle('Cépages'),
                _buildBulletList([
                  'Melon de Bourgogne',
                  'Sauvignon',
                  'Folle Blanche',
                  'Chenin',
                  'Cabernet Franc'
                ]),
                _buildSectionTitle('Description'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "La route des vins du Val de Loire est la plus longue de France. Destination oenotouristique par excellence, elle se déroule sur 800 km à travers le vignoble du Val de Loire. Le Val de Loire, 3e grande région viticole de vin d'appellation française, représente, des Côtes Atlantiques à l’Auvergne, le point d'équilibre entre le sud et le nord."),
                ),
                _buildSectionTitle('Années'),
                _buildBulletList(['2015', '2016', '2017', '2019']),
                const SizedBox(
                    height: 16), // Ajouter de l'espace pour le bouton
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // ANIMATION LORS DU CLIQUE DE LA REGION
                          context,
                          PageTransition(
                            type: PageTransitionType
                                .rightToLeftWithFade, // POUR CHANGER D'ANIMATION
                            child: const Vini(
                              isFromliste_regions: true,
                            ),
                            childCurrent:
                                const RegionPage(region: 'VAL DE LOIRE'),
                          ));
                    },
                    child: const Text(
                        'Découvrez comment est faite la vinification'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 89, 25, 31),
                    ),
                  ),
                )
              ],
            ),
          ),
      'VALLEE DU RHÔNE': (context) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fond_regions.png"),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                _buildSectionTitle('Types de vin'),
                _buildBulletList(['Blanc', 'Rouge']),
                _buildSectionTitle('Cépages'),
                _buildBulletList(
                    ['Syrah', 'Grenache', 'Mourvèdre', 'Cinsault', 'Carignan']),
                _buildSectionTitle('Description'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "On trouve dans la Vallée du Rhône toute la palette des vins : des vins secs dans les trois couleurs (avec une dominante de vins rouges : 80 %), des vins doux naturels et des effervescents. Dans la partie méridionale, règne le grenache, à l'origine de vins rouges \"solaires\", corsés et chaleureux, d'une rondeur généreuse, mais les excès climatiques obligent les viticulteurs à utiliser plusieurs cépages pour obtenir des vins équilibrés."),
                ),
                _buildSectionTitle('Années'),
                _buildBulletList([
                  '2015',
                  '2016',
                  '2018',
                ]),
                const SizedBox(
                    height: 16), // Ajouter de l'espace pour le bouton
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // ANIMATION LORS DU CLIQUE DE LA REGION
                          context,
                          PageTransition(
                            type: PageTransitionType
                                .rightToLeftWithFade, // POUR CHANGER D'ANIMATION
                            child: const Vini(
                              isFromliste_regions: true,
                            ),
                            childCurrent:
                                const RegionPage(region: 'VALLEE DU RHÔNE'),
                          ));
                    },
                    child: const Text(
                        'Découvrez comment est faite la vinification'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 89, 25, 31),
                    ),
                  ),
                )
              ],
            ),
          ),
    };
  }

  @override
  Widget build(BuildContext context) {
    Widget bodyWidget = _bodyMap[widget.region]!(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 89, 25, 31),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        title: Text(widget.region, maxLines: 2),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 244, 237, 222),
      body: bodyWidget,
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildBulletList(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map((item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Icon(Icons.fiber_manual_record),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(child: Text(item)),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
