import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:oenologik/screens/page_regions.dart';

class Map extends StatefulWidget {
  const Map({super.key});

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  late List<MapModel> _mapData;
  late MapShapeSource _shapeSource;
  int _selectedIndex = 0;
  double _currentSliderValue = 2021;
  List<MaterialColor> couleurBassin = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.lightGreen,
    Colors.green
  ];
  @override
  void initState() {
    _mapData = _getMapData();

    _shapeSource = MapShapeSource.asset(
      'assets/geojson/bassin_viticole.geojson',
      shapeDataField: 'Bassin',
      dataCount: _mapData.length,
      primaryValueMapper: (int index) => _mapData[index].bassin,
      shapeColorValueMapper: (int index) {
        if (_mapData[index].bassin != "FRANCE") {
          return couleurBassin[
              _mapData[index].millesime[(2021 - _currentSliderValue).round()] -
                  1];
        } else {
          return Colors.white;
        }
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 244, 237, 222), //fond de la page
      body: Stack(
        children: [
          Container(
            // background image !!NE PAS TOUCHER
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/fond_carte.png"),
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.fitWidth),
            ),
          ),
          Column(
            children: [
              SizedBox(
                //permet de bien placer la carte
                height: 110,
                child: Column(
                  children: [
                    const Spacer(),
                    const Text(
                      "La carte des régions viticoles",
                      style: TextStyle(fontSize: 25),
                    ),
                    Container(
                      height: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                // la CARTE
                height: 380,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: SfMaps(layers: [
                      MapShapeLayer(
                          source: _shapeSource,
                          onSelectionChanged: (index) {
                            _selectedIndex = index;
                            if (_mapData[index].bassin != "FRANCE") {
                              setState(() {
                                // POP-UP  de la régions
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        backgroundColor: const Color.fromARGB(
                                            255, 244, 237, 222),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              20.0,
                                            ),
                                          ),
                                        ),
                                        contentPadding: const EdgeInsets.only(
                                          top: 10.0,
                                        ),
                                        titlePadding: EdgeInsets.zero,
                                        title: Container(
                                          height: 70,
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 89, 25, 31),
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight:
                                                      Radius.circular(20.0),
                                                  bottomLeft:
                                                      Radius.circular(5.0),
                                                  bottomRight:
                                                      Radius.circular(5.0))),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Text(
                                                _mapData[index].bassin,
                                                style: const TextStyle(
                                                    fontSize: 24.0,
                                                    color: Colors.white),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                        content: SizedBox(
                                          height: 400,
                                          child: SingleChildScrollView(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              //                                Bouteilles proposées ----
                                              children: <Widget>[
                                                const Text(
                                                  'Nous vous conseillons : \n',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    height:
                                                        300, //       height a changer (taille max du container BOUTEILLE) donc pour coller avec la description
                                                    child: Row(
                                                        children: [
                                                          GestureDetector(
                                                            onTap: () {
                                                              launchUrl(Uri.parse(
                                                                  _mapData[
                                                                          index]
                                                                      .links
                                                                      .elementAt(
                                                                          0)));
                                                            },
                                                            child: Column(
                                                              children: [
                                                                Image.asset(
                                                                  "assets/images/bouteille_PP.png",
                                                                  height:
                                                                      200, //  a changer avec les images des bouteilles a jour
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
                                                                      SizedBox(
                                                                    width: 80,
                                                                    child: Text(
                                                                        _mapData[index]
                                                                            .bouteilles
                                                                            .elementAt(
                                                                                0),
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: const TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontSize: 13)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              launchUrl(Uri.parse(
                                                                  _mapData[
                                                                          index]
                                                                      .links
                                                                      .elementAt(
                                                                          1)));
                                                            },
                                                            child: Column(
                                                              children: [
                                                                Image.asset(
                                                                  "assets/images/bouteille_QP.png",
                                                                  height:
                                                                      200, //            a changer avec les images des bouteilles a jour
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
                                                                      SizedBox(
                                                                    width: 80,
                                                                    child: Text(
                                                                      _mapData[
                                                                              index]
                                                                          .bouteilles
                                                                          .elementAt(
                                                                              1),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: const TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              13),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              launchUrl(Uri.parse(
                                                                  _mapData[
                                                                          index]
                                                                      .links
                                                                      .elementAt(
                                                                          2)));
                                                            },
                                                            child: Column(
                                                              children: [
                                                                Image.asset(
                                                                  "assets/images/bouteille_HDG.png",
                                                                  height:
                                                                      200, //  a changer avec les images des bouteilles a jour
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
                                                                      SizedBox(
                                                                    width: 60,
                                                                    child: Text(
                                                                        _mapData[index]
                                                                            .bouteilles
                                                                            .elementAt(
                                                                                2),
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: const TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontSize: 13)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center)),
                                                //                                                       fin_bouteilles
                                                /*Container(
                                                  width: double.infinity,
                                                  height: 60,
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                ),*/
                                                Container(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: const Text(
                                                      'Description : ',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    _mapData[index]
                                                        .description, // TEXT DESCRIPTION
                                                    style: const TextStyle(
                                                        fontSize: 15,
                                                        height: 1.25),
                                                  ),
                                                ),
                                                Center(
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      // bouton qui permet d'ne savoir plus sur la régions
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              RegionPage(
                                                            region: _mapData[
                                                                    _selectedIndex]
                                                                .bassin,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.black,
                                                      fixedSize: const Size(200,
                                                          40), // Taille du bouton ajustée
                                                    ),
                                                    child: const Text(
                                                      "Pour en savoir plus sur la région",
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              });
                            }
                          }),
                    ])),
              ),
              Container(
                height: 20,
              ),
              Slider(
                activeColor: const Color.fromARGB(255, 89, 25, 31),
                inactiveColor: Colors.black12,
                thumbColor: Colors.black,
                // slider bouton
                value: _currentSliderValue,
                min: 2010,
                max: 2021,
                divisions: 12,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                    _shapeSource = MapShapeSource.asset(
                      'assets/geojson/bassin_viticole.geojson',
                      shapeDataField: 'Bassin',
                      dataCount: _mapData.length,
                      primaryValueMapper: (int index) => _mapData[index].bassin,
                      shapeColorValueMapper: (int index) {
                        // changement par rapport au slide
                        if (_mapData[index].bassin != "FRANCE") {
                          return couleurBassin[_mapData[index].millesime[
                                  (2021 - _currentSliderValue).round()] -
                              1];

                          /*
                          final redValue =
                              (255 * (1 - (_currentSliderValue / 100))).toInt();
                          final greenValue =
                              (255 * (_currentSliderValue / 100)).toInt();
                          final colorTween =
                              ColorTween(begin: Colors.red, end: Colors.green);
                          final color =
                              colorTween.transform(_currentSliderValue / 100);
                          return color?.withOpacity(0.7);*/
                        } else {
                          return Colors.white;
                        }
                      },
                    );
                  });
                },
              ),
              const Text(
                "Millésime : ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Row(children: [
                          Container(
                            color: Colors.red,
                            height: 10,
                            width: 10,
                          ),
                          const Text(' : Petit')
                        ]),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Row(children: [
                          Container(
                            color: Colors.orange,
                            height: 10,
                            width: 10,
                          ),
                          const Text(' : Moyen')
                        ]),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Row(children: [
                          Container(
                            color: Colors.yellow,
                            height: 10,
                            width: 10,
                          ),
                          const Text(' : Bon')
                        ]),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Row(children: [
                          Container(
                            color: Colors.lightGreen,
                            height: 10,
                            width: 10,
                          ),
                          const Text(' : Grand'),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Row(children: [
                              Container(
                                color: Colors.green,
                                height: 10,
                                width: 10,
                              ),
                              const Text(' : Exceptionnel')
                            ]),
                          )
                        ]),
                      ),
                    ]),
                height: 60,
              )
            ],
          ),
        ],
      ),
    );
  }

  static List<MapModel> _getMapData() {
    return <MapModel>[
      MapModel(
          'ARMAGNAC',
          Colors.green,
          [3, 4, 3, 4, 5, 4, 4, 4, 2, 2, 4, 3],
          "Deux appellations se partagent le vignoble, l’AOP Floc de Gascogne et l’IGP Côte de Gascogne. Le Floc de Gascogne est une particularité régionale. Il s’agit d’une liqueur composée de moût de raisin et d’Armagnac. Protégé par une AOC depuis 1990, il se décline en blanc et en rosé. L’IGP Côte de Gascogne a remplacé en 2009 l’appellation des vins de pays des côtes de Gascogne. Même si la région produit des rosés et des rouges, la majorité des vins produits sous cette appellation sont des vins blancs produits à partir de Chardonnay, de Gros Manseng ou de Folle blanche.",
          ["Château de Laubade", "Domaine d’Espérance", "Dartigalongue 1978"],
          [
            "https://www.comptoirdesvignes.fr/bouteilles/chateau-de-laubade-vsop",
            "https://www.armagnac.com/fr/armagnac.php/1800-bas-armagnac-domaine-d-esperance-2007?gad=1&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfY54ydnljv5vjWnSGD79DdoUMQSTEol6IXsp0DHPIkhd8fiKT_VyS4aAj3qEALw_wcB",
            "https://www.dartigalongue.com/boutique/nos-millesimes/1978/"
          ]), //https:// www.plaisirsdegascogne.com/blog/region-armagnac/#:~:text=L'Armagnac%20est%20une%20r%C3%A9gion,d'une%20feuille%20de%20vigne.
      MapModel(
          'COGNAC',
          Colors.green,
          [3, 4, 4, 4, 3, 3, 3, 3, 1, 2, 3, 4],
          "Le Cognac est le résultat d’une « double chauffe » de vin faiblement alcoolisé. Et suivie d’un vieillissement minimum de deux ans en fût de chêne. Cette technique, initiée en Charente au XVIIIe siècle, vient alors perfectionner les méthodes de distillation importées dans la région à l’époque de la Renaissance. L’opération était destinée à améliorer la conservation du vin charentais dont la qualité pâtissait alors de la longueur des transports. Aujourd’hui, on produit notamment cette eau-de-vie à partir du cépage Ugni blanc, inclus dans l’IGP. ",
          ["Rémy Martin", "Hine Rare", "Hennessy Paradis"],
          [
            "https://www.decantalo.com/fr/fr/remy-martin-vsop.html#/54-format-70_cl/177-annee-non_millesime",
            "https://www.vinatis.com/id-36982-cognac-hine-rare-vsop?r=googlemerchant&ids=perfmax-spiritueux&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfY2Lo7T44DRIKLJWmC18w5fKACLN37_ycQmfB71mjFeIPDlYRHRNdAaApanEALw_wcB",
            "https://www.divinecellar.com/fr/cognac/299-hennessy-paradis-cognac-3245996126311.html?gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfZuauUiTxVjWe_J4dNN03hYSdx89oxb37oU0aTpJtd5tD1vslaRuZgaAlXJEALw_wcB"
          ]), //https://www.royanatlantique.fr/explorer/terroir-et-gastronomie/vins-charentais-pineau-cognac/
      MapModel(
          'VIN DOUX NATURELS',
          Colors.green,
          [3, 4, 3, 4, 5, 4, 4, 4, 2, 2, 4, 3],
          "Le vin doux naturel est un vin muté obtenu par mutage lors de la fermentation alcoolique, le moût en cours de fermentation étant additionné d`alcool éthylique (eau-de-vie de vin essentiellement) pour arrêter sa fermentation afin de conserver sucre résiduel et fruité, tout en augmentant plus ou moins fortement le titre alcoométrique volumique. L'alcool du vin doux naturel provient donc de sa propre fermentation ainsi que de l'ajout pratiqué lors du mutage. On le distingue du vin de liqueur qui reçoit de l'alcool avant le début de la fermentation.",
          [
            "Domaine La Tour Vieille",
            "Domaine Cazes Rivesaltes",
            "Château d'Yquem"
          ],
          [
            "https://www.latourvieille.com/vins/banyuls-rimage/",
            "https://www.biocoop.fr/rivesaltes-ambre-75cl-cz1024-000.html?utm_source=SEA&utm_medium=google&utm_campaign=pmax+shopping&utm_id=19074744860&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfa0qtOM8j9BsHj9xTvPCwJGTDI0UNdoE9o-DnsqugvbsrCb4CrGGpQaAkv1EALw_wcB",
            "https://www.vinatis.com/id-52891-chateau-d-yquem-2019-1er-cru-classe-superieur?r=googlemerchant&ids=perfmax-vins&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfbO3hNXdy-z5N56FPVB_h4DtXKMVliOlX-k8Iyj4cZjzg3yBWQqe_4aAmaKEALw_wcB"
          ]), // https://fr.wikipedia.org/wiki/Vin_doux_naturel
      MapModel(
          'ALSACE ET EST',
          Colors.green,
          [3, 4, 5, 4, 3, 3, 2, 4, 2, 3, 3, 4],
          "Les nombreuses sinuosités du relief et la variété des sols permettent à cette région de proposer une vaste gamme de vins comme des vins d'Alsace secs et doux, tranquilles et effervescents. Mais grâce à son climat tempéré et frais, le principal atout du vignoble Alsacien réside dans la maturation optimale des raisins blancs, le pinot noir étant l'exception. L'identification des vins par leur cépage – riesling, gewurztraminer, sylvaner... – est l'une des autres spécificités alsaciennes, ainsi que la présence de grands crus qui font la réputation des vins d'Alsace. ",
          [
            "Dopff au Moulin Pinot Blanc",
            "Domaine Marcel Deiss Riesling",
            "Domaine Zind-Humbrecht"
          ],
          [
            "https://www.vino.com/fr/dettaglio/alsace-aoc-gewurztraminer-dopff-au-moulin-2020.html?kk=a4c626f-1879f39b761-10ac&kgclid=Cj0KCQjwxYOiBhC9ARIsANiEIfY2sr2_0q1jsksO0JM7ehheba7L8uj7pHT-ic2nGoTwy94fsDmz9FIaAouGEALw_wcB&utm_medium=aggregatore&utm_source=kelkoo_fr&utm_term=dopffaumoulingewurztraminer2020&utm_country=fr&st=fr",
            "https://www.vinatis.com/id-50305-riesling-2020-marcel-deiss",
            "https://www.vinatis.com/id-57400-riesling-rangen-de-thann-clos-saint-urbain-2020-domaine-zind-humbrecht"
          ]), // https://www.hachette-vins.com/tout-sur-le-vin/regions-vins/76/alsace/
      MapModel(
          'BOURGOGNE BEAUJOLAIS SAVOIE JURA',
          Colors.green,
          [2, 4, 5, 5, 4, 4, 4, 2, 1, 2, 3, 3],
          "Des vins simples et conviviaux, à l'image de l'appellation bourgogne qui produit : des rouges souples et ronds, au fruité éclatant rappelant les fruits rouges et noirs, et pour les meilleurs - l'âge venant - le pruneau, le poivre, et le sous-bois ; des blancs, fins et persistants, offrant des arômes de fleurs blanches, de fruits blancs, d'amande, de noisette et de beurre frais ; ainsi qu'une petite production de rosés vifs et gourmands sur la tonalité aromatique des rouges.",
          [
            "Domaine Guillot-Broux",
            "Domaine Faiveley Mercurey",
            "Domaine de la Romanée-Conti Richebourg"
          ],
          [
            "https://fr.bazarchic.com/ventes/produit/id/4596281/idcat/2575358/?lgw_code=10307-17862665&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfYkbnh6tGBFs2bNL1NlYmnmJlNh_35rcqrSWNs76v5FWNSkP4ZuUTAaAtUqEALw_wcB",
            "https://www.lagrandeepicerie.com/fr/domaine-faiveley--la-framboisiere--aoc-mercurey--2020/200045551005.html?gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfZv9uwsO4Gp2t78SVkW4pxfbQ4RIwwi12QES-O5hkO4fETLyt7lNysaAonaEALw_wcB",
            "https://www.vivino.com/FR/fr/domaine-de-la-romanee-conti-richebourg-grand-cru/w/83913?bottle_count=1&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfYDeSJgvNLrDwLGBoxi0u56C8rh4jUEqYsLHhu7tySAvapZ1DXjz5kaAkHVEALw_wcB&istBid=t&istCompanyId=fdd8dc22-e46f-4e11-99d6-c13dd2bd0f79&istFeedId=85b214d1-7686-4a7b-afb5-77b25d4e3a52&istItemId=pawmppmqi&price_id=18658450&utm_campaign=PM_02_456&utm_content=FR&utm_medium=paid_search&utm_source=google&year=2013"
          ]), //https://www.lepoint.fr/vin/appellations/bourgogne/la-degustation-des-vins-de-bourgogne-18-01-2013-1617060_1492.php
      MapModel(
          'CHAMPAGNE',
          Colors.green,
          [3, 3, 5, 4, 2, 4, 5, 3, 3, 4, 4, 3],
          "Le Champagne, connu également sous le nom de “Vin de Champagne” est un vin spiritueux français protégé par une appellation d’origine contrôlée (AOC). Il tire son nom de la région de Champagne, en France, là où les principaux raisins utilisés pour sa fabrication sont cultivés. C’est un vin effervescent formé avec trois principaux cépages : le chardonnay (cépage blanc), le pinot noir et le meunier (cépages noirs).",
          ["Michel Fudryna", "Billecart-Salmon Brut", "Krug Grande Cuvée"],
          [
            "https://www.vinatis.com/id-79-champagne-michel-furdyna-brut-carte-blanche",
            "https://www.vinatis.com/id-50-champagne-billecart-salmon-brut-reserve?r=googlemerchant&ids=perfmax-champagne&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfZ6UTDXJtvbfwxdJq19K_yvWmLM2W_Fbdc7cMqNlXQOQk0Tzx34xOQaArAKEALw_wcB",
            "https://www.wineandco.com/champagne-krug-grande-cuvee-edition-170-avec-etui-50099-fr-eur-fr.html?gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfYqmQI2Zgv4a94Gw3LTjlz7t779kTdZkBy2yL07XpsY9peyDim8F4QaAlh-EALw_wcB"
          ]), // https://bullesdechamp.fr/quest-ce-que-le-champagne/#:~:text=C'est%20un%20vin%20effervescent,plusieurs%20lors%20d'%C3%A9v%C3%A9nements%20symboliques.
      MapModel(
          'LANGUEDOC-ROUSSILLON',
          Colors.green,
          [3, 4, 4, 4, 5, 4, 4, 3, 5, 3, 4, 3],
          "Ce qui fait la magie des vins rouges du Languedoc Roussillon, c'est avant tout la diversité de la production. Frais, complexes, puissants, doux, généreux, souples, nous vous proposons un choix de vins rouges aussi varié que nos cépages et terroirs. Avec 69% de la production régionale chaque vin a sa spécificité. Dominé par les cépages Syrah, Carignan, Grenache et Mourvèdre, c'est au total plus de 35 cépages autorisés en IGP ou sur les 37 AOP régionales.",
          [
            "Domaine de la Provenquière",
            "Château Saint-Roch Kerbuccio",
            "Domaine Gauby Muntada"
          ],
          [
            "https://caveau.provenquiere.com/fr/gamme-cepages/11-cuvee-chardonnay-la-provenquiere.html",
            "https://www.vinatis.com/id-43657-kerbuccio-2018-chateau-saint-roch-by-jean-marc-lafage?r=googlemerchant&ids=perfmax-vins&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfbSVE5ln7d67Mev4sc6_vgjQRNPHW1PBQ5UBL1yBndwwRPC3MqWDG0aAu0wEALw_wcB",
            "https://www.wineandco.com/domaine-gauby-muntada-rouge-2021-49656-fr-eur-fr.html?gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfbQ1P1HZmaTBEQQH-nZZRw9I9UZXSSHhDDWk8mXSJOAp-F23iQG5CMaApcgEALw_wcB"
          ]), //https://www.vie-d-oc.fr/vin-languedoc-rouge.php
      MapModel(
          'PROVENCE-CORSE',
          Colors.green,
          [3, 4, 3, 3, 4, 4, 5, 4, 2, 3, 3, 5],
          "Son climat particulier permet à des vignes atypiques d’être cultivées, loin des cépages que l’on retrouve dans le reste de la France. Cette région est idéale pour déguster des vins rosés et légers tout en oubliant les problèmes du quotidien.  Les vins de Corses AOC sont composés à plus de la moitié de rosés, un tiers correspondant aux vins rouges et le reste aux vins blancs. ",
          [
            "Domaine de la Bastide Rosé",
            "Clos Canarelli Figari Blanc",
            "Domaine Tempier Bandol Rouge"
          ],
          [
            "https://www.vinatis.com/id-58616-rose-2022-domaine-la-rose-des-vents?r=googlemerchant&ids=perfmax-vins&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfYgdG-VcnmFbFKXH0fLAL4L6tHRqOFuMYVyZY8PNPGkfP5D4U-SLGgaAoQjEALw_wcB",
            "https://www.wineandco.com/clos-canarelli-blanc-2021-48774-fr-eur-fr.html?gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfZPs7RpnRyQs7jj5BKCR-5qyvpPftY64M6nOdJeDr_jGySezxTf1XQaAvtgEALw_wcB",
            "https://www.cavissima.com/domaine-tempier-2019-rouge-magnum-12731.html?keyword=&matchtype=&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfZ_e0d81vNYDsBs5Glm4-iyFnexmZyVY9TxFG_EF7Que1HXbuZ7SkYaAklZEALw_wcB"
          ]), // https://www.espace-concours.fr/oenologie/cepages/corse
      MapModel(
          'SUD-OUEST',
          Colors.green,
          [3, 5, 4, 5, 4, 4, 4, 3, 1, 2, 4, 3],
          "Le Sud-Ouest est un véritable musée ampélographique des cépages d'autrefois, et nulle part ailleurs on ne trouve une telle diversité de variétés, dont certaines sont sorties de la nuit des temps viticoles : manseng, tannat, négrette, duras, len-de-l'el (loin-de-l'œil), mauzac, fer-servadou, arrufiac et baroque, ou encore raffiat de Moncade et camaralet de Lasseube. Ces cépages donnent aux vins des accents d'authenticité et de typicité inimitable ; des vins de tous types et de toutes les couleurs, à même de combler tous les amateurs : blancs secs ou liquoreux, effervescents, rosés tendres ou vineux, rouges légers ou de garde. Des vins qui côtoient les produits fermiers avec lesquels ils se marient tout naturellement, pour faire du Sud-Ouest une région privilégiée de gastronomie de tradition.",
          [
            "Domaine du Tariquet",
            "Château Montus Madiran",
            "Château Montus Prestige"
          ],
          [
            "https://www.vinatis.com/id-51646-premieres-grives-2021-domaine-tariquet?r=googlemerchant&ids=perfmax-vins&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfbt7U5n0x4EN6Z8-qAPkPtTok-2t_gCHOUDTMou0PlQGPoizkNt5mwaAhYlEALw_wcB",
            "https://lacave-eclairee.fr/products/chateau-montus-madiran-2017?variant=46499155149135&currency=EUR&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfbien_HyYj6eBHF9Cyp0Nap5eIm2_glrEup-oIkt_R7XYrpOydltr0aAh7FEALw_wcB",
            "https://www.vinatis.com/id-57502-la-tyre-2008-chateau-montus-alain-brumont?r=googlemerchant&ids=perfmax-vins&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfayoFJmtRBnOe5pRqrW2rQBq7qSrSByuwR5u_5zwy3KVY66u7ND3sIaAmUoEALw_wcB"
          ]), // https://www.hachette-vins.com/tout-sur-le-vin/regions-vins/104/sud-ouest/
      MapModel(
          'TOULOUSE-PYRENEES',
          Colors.green,
          [3, 4, 3, 4, 5, 4, 4, 4, 2, 2, 4, 3],
          "Tous les vins proviennent de terres et de paysages différents, mais ils ont en commun le fait qu’ils peuvent être soit forts, soit puissants aux tannins soyeux, ou bien légers, nerveux, à la finale longue. Dans tous les cas, qu’ils soient secs, aromatiques, doux, ils se marient à merveille avec les mets les plus divers.",
          [
            "Domaine de l'Herré Blanc",
            "Château Bellevue la Forêt",
            "Chateau Montus"
          ],
          [
            "https://www.vinatis.com/id-56630-domaine-horgelus-gros-manseng-sauvignon-2022?r=googlemerchant&ids=perfmax-vins&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfYmSLv57aIO02xE3eJpK0sEM2x3hiYP2MIWMS40O4rjfJpM21BSxUMaAo4_EALw_wcB",
            "https://www.vinatis.com/id-51866-chateau-bellevue-favereau-2019?r=googlemerchant&ids=perfmax-vins&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfbqZkTIr1bH3J8VwQqO3Mux_CJiocb9-vIbSLTZy3S5X2-lzxEyOZIaAgr7EALw_wcB",
            "https://www.vinatis.com/id-57502-la-tyre-2008-chateau-montus-alain-brumont"
          ]), // https://avis-vin.lefigaro.fr/connaitre-deguster/tout-savoir-sur-le-vin/guide-des-regions-et-des-appellations/sud-ouest/appellation-vin-de-pays-des-pyrenees-atlantiques#:~:text=Quel%20est%20le%20style%20des,nerveux%2C%20%C3%A0%20la%20finale%20longue.
      MapModel(
          'VAL DE LOIRE',
          Colors.green,
          [2, 4, 4, 5, 4, 4, 4, 4, 1, 2, 2, 3],
          "Le vignoble de la vallée de la Loire est une vaste zone de production de vin en France, regroupant plusieurs régions viticoles. Ces régions produisent des vins blancs secs, demi-secs, moelleux, voire liquoreux, des vins rouges le plus souvent légers et des vins rosés ; on trouve également de nombreux vins effervescents. Toutes ces régions sont situées au bord de la Loire et de ses affluents, et une partie est située dans le Val de Loire.",
          [
            "Sauvignon Blanc de Touraine",
            "Vouvray Clos Naudin",
            "Clos Rougeard Saumur-Champigny"
          ],
          [
            "https://www.vinatis.com/id-60859-touraine-sauvignon-2022-domaine-jean-francois-roy?r=googlemerchant&ids=perfmax-vins&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfaHiu7FxQ4MQR_AiuxKDME1HyGAo6aPfWx_6OkqBvScQWcnOhxImgEaAn8WEALw_wcB",
            "https://www.vinatis.com/id-43384-vouvray-moelleux-2017-clos-naudin?r=googlemerchant&ids=perfmax-vins&gclid=CjwKCAjw6IiiBhAOEiwALNqnca_Pcr8fckiI4cXxasYFk_TUIjHnpEfWTyn-F_PmR4TIEnuOk0wRgxoC0r0QAvD_BwE"
                "https://www.vivino.com/FR/fr/clos-rougeard-saumur-champigny/w/1101358?bottle_count=1&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfa_MV870PhrH7fcPkoc1rLdWgTvq1uCIPOBwsLzfQD_6q2hoA8-rokaAgDcEALw_wcB&istBid=t&istCompanyId=fdd8dc22-e46f-4e11-99d6-c13dd2bd0f79&istFeedId=85b214d1-7686-4a7b-afb5-77b25d4e3a52&istItemId=pawmllriq&price_id=27414441&utm_campaign=PM_02_456&utm_content=FR&utm_medium=paid_search&utm_source=google&year=2016"
          ]), //https://fr.wikipedia.org/wiki/Vignoble_de_la_vall%C3%A9e_de_la_Loire
      MapModel(
          'VALLEE DU RHÔNE',
          Colors.green,
          [3, 4, 4, 4, 4, 5, 5, 4, 2, 4, 3, 4],
          "Il est difficile de décrire des vins dont les cépages sont si différents car l’appellation accepte une vingtaine de cépages.\nPour les rouges, la Syrah et le Grenache noir sont les cépages les plus présents. Le premier donne aux rouges des arômes d’épices et une couleur sombre alors que le second confère des notes fruitées\nLes vins blancs sont des assemblages à base de Grenache blanc, Marsanne, Clairette, Bourboulenc, Viognier et Roussanne. Assemblés, ces cépages permettent au vin d’être riche en arômes floraux et fruités tout en étant très frais.",
          ["Gigondas Rouge", "Hermitage Rouge", "Châteauneuf-du-Pape Rouge"],
          [
            "https://www.vinatis.com/id-52028-gigondas-2019-e-guigal?r=googlemerchant&ids=perfmax-vins&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfaP236LnAX4IRjKIIVScTIyMp4pNd3vVLT4gsVQZIAU5R5f1Ij05zEaAsB6EALw_wcB",
            "https://www.vinatis.com/id-51251-hermitage-2019-e-guigal?r=googlemerchant&ids=perfmax-vins&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfZiILXQRZTFSPR3cP7tb1Q88_JH7kQmJAW6ZcDHNzwPeRToiWyuxh0aAh2uEALw_wcB",
            "https://www.vinatis.com/id-49625-chateauneuf-du-pape-grand-vin-2018-chateau-de-nalys-e-guigal?r=googlemerchant&ids=perfmax-vins&gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfZDwLGW2ZhdJYK3Bph28OMmRfFbnue8ZejKXULEQ1GQwz6BIz6HClUaApt9EALw_wcB"
          ]),
      MapModel('FRANCE', const Color.fromARGB(255, 255, 250, 250), [], "a",
          [" ", " ", " "], [" ", " ", " "]),
    ];
  }
}

class MapModel {
  MapModel(this.bassin, this.color, this.millesime, this.description,
      this.bouteilles, this.links);
  String bassin;
  Color color;
  List<int> millesime;
  String description;
  List<String> bouteilles;
  List<String> links;
}

/*decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/fond_carte.png"),
              alignment: Alignment.bottomCenter,
              fit: BoxFit.fitWidth),*/
