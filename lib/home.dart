import 'package:flutter/material.dart';
import 'package:oenologik/screens/liste_regions.dart';
import 'package:oenologik/screens/degustation.dart';
import 'package:oenologik/screens/mets.dart';
import 'package:oenologik/screens/vinification.dart';
import 'package:oenologik/screens/map.dart';

class Home extends StatefulWidget {
  int currentTab;
  Home(this.currentTab, {super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.currentTab);
  }

  @override
  Widget build(BuildContext context) {
    bool kbIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Container(
              width: 160,
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Image.asset('assets/images/haut.png')),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 89, 25, 31),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        ),
        /*
      body: PageView(
        controller: _pageController,
        onPageChanged: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        children: [MyApp2(), const Mets(), const Map(), Degu(), Vini()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: _bottomNavBarItem,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 500), curve: Curves.ease);
          });
        },
      ),*/
        body: PageView(
          controller: _pageController,
          onPageChanged: (newIndex) {
            setState(() {});
          },
          children: const [ListeRegions(), Mets(), Map(), Degu(), Vini()],
        ),
        floatingActionButton: Visibility(
          visible: !kbIsOpen,
          child: SizedBox(
            height: 80.0,
            width: 80.0,
            child: FloatingActionButton(
              child: const Image(
                image: AssetImage("assets/images/logoRond.png"),
              ),
              backgroundColor: Colors.transparent,
              elevation: 5.0,
              onPressed: () {
                _pageController.animateToPage(2,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOutExpo);
              },
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          height: 75,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: IconButton(
                  iconSize: 40,
                  icon: const Icon(Icons.waves_rounded),
                  onPressed: () {
                    _pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOutExpo);
                  },
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: IconButton(
                  iconSize: 40,
                  icon: const Icon(Icons.restaurant_menu_outlined),
                  onPressed: () {
                    _pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOutExpo);
                  },
                  color: Colors.white,
                ),
              ),
              const Expanded(child: Text('')),
              Expanded(
                child: IconButton(
                  iconSize: 40,
                  icon: const Icon(Icons.wine_bar_rounded),
                  onPressed: () {
                    _pageController.animateToPage(3,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOutExpo);
                  },
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: IconButton(
                  iconSize: 40,
                  icon: const Icon(Icons.emoji_nature_rounded),
                  onPressed: () {
                    _pageController.animateToPage(4,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOutExpo);
                  },
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }
}
