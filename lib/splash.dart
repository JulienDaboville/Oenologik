import 'package:colorful_background/colorful_background.dart';
import 'package:flutter/material.dart';
import 'package:oenologik/home.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  get child => null;

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ColorfulBackground(
            duration: const Duration(milliseconds: 4200),
            backgroundColors: const [
              Color.fromRGBO(244, 237, 222, 1),
              Color.fromRGBO(244, 237, 222, 1),
              Color.fromRGBO(86, 37, 37, 0.969),
            ],
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Image.asset(
                    "assets/images/vin-splash-unscreen.gif", //JE VAIS MODIFIER LE GIF
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                      width: 200.0,
                      child: DefaultTextStyle(
                          style: const TextStyle(
                            color: Color.fromRGBO(244, 198, 198, 1),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Bobbers',
                          ),
                          child: AnimatedTextKit(animatedTexts: [
                            TyperAnimatedText('      Oenologik')
                          ], isRepeatingAnimation: false, onTap: () {})))
                ]))));
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 4200), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home(2)));
  }
}
