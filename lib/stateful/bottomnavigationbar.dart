import 'package:flutter/material.dart';
import 'package:khadamat_blue_coller/localization/localization_constants.dart';
import 'package:khadamat_blue_coller/stateless/favorites_screen%20(19).dart';
import 'package:khadamat_blue_coller/stateless/main_screen_(7).dart';

import '../color.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key key}) : super(key: key);
  final String routeName = "./bottomNavigationBar";
  @override
  State<StatefulWidget> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      MainScreen(),
      const Center(
          child: Icon(Icons.receipt_long, size: 64.0, color: Colors.cyan)),
      FavoriteScreen(),
      const Center(
          child: Icon(Icons.apps_rounded, size: 64.0, color: Colors.cyan)),
    const Center(
    child: Icon(Icons.map, size: 64.0, color: Colors.cyan)),
    ];

    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Image.asset(
          "assets/list.png",
          width: 28,
          height: 28,
          color: currentIndex == 0? activeContextTextColor : contextTextColor,
        ),
        label: getTranslated(context, "list"),
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          "assets/orders.png",
          width: 28,
          height: 28,
          color: currentIndex == 1? activeContextTextColor : contextTextColor,
        ),
        label: getTranslated(context, "orders"),
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          "assets/favorite.png",
          width: 28,
          height: 28,
          color: currentIndex == 2? activeContextTextColor : contextTextColor,
        ),
        label: getTranslated(context, "favorite"),
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          "assets/services.png",
          width: 28,
          height: 28,
          color: currentIndex == 3? activeContextTextColor : contextTextColor,
        ),
        label: getTranslated(context, "services"),
      ),
      BottomNavigationBarItem(

        icon: Image.asset(
          "assets/map.png",
          width: 28,
          height: 28,
          color: currentIndex == 4? activeContextTextColor : contextTextColor,
        ),
        label: getTranslated(context, "map"),
      ),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 1, blurRadius: 3),
          ],
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: BottomNavigationBar(
              items: _kBottmonNavBarItems,
              currentIndex: currentIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (int index) {
                onTap(index);
              },
            )));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _kTabPages[currentIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
