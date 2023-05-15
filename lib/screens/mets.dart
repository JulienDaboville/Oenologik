import 'package:flutter/material.dart';
import 'package:oenologik/screens/mets/mets_fromages.dart';
import 'package:oenologik/screens/mets/mets_poissons.dart';
import 'package:oenologik/screens/mets/mets_viandes.dart';
import 'mets/mets_aperitif.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Mets extends StatefulWidget {
  const Mets({super.key});

  @override
  State<Mets> createState() => _MetsState();
}

const colorizeColors = [
  Color.fromARGB(167, 163, 89, 89),
  Color.fromARGB(255, 52, 22, 22),
];

const colorizeTextStyle = TextStyle(
  fontSize: 14.0,
  fontFamily: 'Horizon',
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic,
);

class _MetsState extends State<Mets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //FOND DE PAGE
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 244, 237, 222),
        image: DecorationImage(
            image: AssetImage("assets/images/fond_mets.png"),
            alignment: Alignment.bottomCenter,
            fit: BoxFit.fitWidth),
      ),
      child: Scaffold(
        body: Column(children: [
          Container(
            height: 60,
          ),
          GestureDetector(
            child: Container(
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    "Apéritif",
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: false,
              ),
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 237, 215, 215),
                      Color.fromARGB(255, 244, 228, 200),
                      Color.fromARGB(255, 189, 130, 130),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  border: Border.all(color: Colors.black, width: 2)),
            ),
            onTap: () => {
              Navigator.of(context).push(
                AnimationRond(mets_aperitif(), 0),
              ),
            },
          ),
          Container(
            height: 40,
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        "Viandes",
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                    ],
                    isRepeatingAnimation: false,
                  ),
                  // ROND VIANDE
                  height: 150,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 237, 215, 215),
                          Color.fromARGB(255, 244, 228, 200),
                          Color.fromARGB(255, 189, 130, 130),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      border: Border.all(color: Colors.black, width: 2)),
                ),
                onTap: () => {
                  Navigator.of(context).push(AnimationRond(mets_viandes(), 1))
                },
              ),
              Container(
                width: 40,
              ),
              GestureDetector(
                child: Container(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        "Poissons",
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                    ],
                    isRepeatingAnimation: false,
                  ),
                  // ROND POISSON
                  height: 150,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 237, 215, 215),
                          Color.fromARGB(255, 244, 228, 200),
                          Color.fromARGB(255, 189, 130, 130),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      border: Border.all(
                          color: Color.fromARGB(255, 0, 0, 0), width: 2)),
                ),
                onTap: () => {
                  Navigator.of(context).push(AnimationRond(mets_poissons(), 2))
                },
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Container(
            height: 40,
          ),
          GestureDetector(
            child: Container(
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    "Fromage",
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: false,
              ),

              // ROND DESSERT
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 237, 215, 215),
                      Color.fromARGB(255, 244, 228, 200),
                      Color.fromARGB(255, 189, 130, 130),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  border: Border.all(color: Colors.black, width: 2)),
            ),
            onTap: () =>
                {Navigator.of(context).push(AnimationRond(mets_fromages(), 3))},
          )
        ]),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}

class AnimationRond extends PageRouteBuilder {
  //animation des ROND
  late final Widget enterWidget;
  final int pageNum;

  AnimationRond(this.enterWidget, this.pageNum)
      : super(
          opaque: false,
          pageBuilder: (context, animation, secondaryAnimation) => enterWidget,
          transitionDuration: const Duration(milliseconds: 1500),
          reverseTransitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            animation = CurvedAnimation(
                parent: animation,
                curve: Curves.fastLinearToSlowEaseIn,
                reverseCurve: Curves.fastOutSlowIn);
            var alignMode = [
              // a changer pour centrer l'animation
              [0.0, -0.50], //rond apero 0
              [-0.40, 0.0], // rond viande 1
              [0.40, 0.0], // rond poisson 2
              [0.0, 0.50] // rond dessert 3
            ];
            return ScaleTransition(
                alignment:
                    Alignment(alignMode[pageNum][0], alignMode[pageNum][1]),
                scale: animation,
                child: child);
          },
        );
}
