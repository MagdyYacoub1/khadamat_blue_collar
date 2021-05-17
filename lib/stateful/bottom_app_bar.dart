import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khadamat_blue_coller/stateless/favorites_screen%20(19).dart';

import '../color.dart';
import '../styling.dart';

class MyBottomAppBar extends StatefulWidget {
  const MyBottomAppBar({
    Key key,
  }) : super(key: key);

  @override
  _MyBottomAppBarState createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends State<MyBottomAppBar> {
  int currentIndex = 0;

  void onTap(int index, BuildContext context) {
    setState(() {
      currentIndex = index;
      if(currentIndex == 2)
        Navigator.of(context).pushNamed(FavoriteScreen().routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          onTap: (index) => onTap(index, context),
          elevation: 150.0,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedLabelStyle: activeContextTextStyle,
          unselectedLabelStyle: contextTextStyle,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: activeContextTextColor,
          unselectedItemColor: contextTextColor,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/list.png",
                width: 28,
                height: 28,
                color: currentIndex == 0? activeContextTextColor : contextTextColor,
              ),
              label: "List",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/orders.png",
                width: 28,
                height: 28,
                color: currentIndex == 1? activeContextTextColor : contextTextColor,
              ),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/favorite.png",
                width: 28,
                height: 28,
                color: currentIndex == 2? activeContextTextColor : contextTextColor,
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/services.png",
                width: 28,
                height: 28,
                color: currentIndex == 3? activeContextTextColor : contextTextColor,
              ),
              label: "Services",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/map.png",
                width: 28,
                height: 28,
                color: currentIndex == 4? activeContextTextColor : contextTextColor,
              ),
              label: "Map",
            ),
          ],
        ),
      ),
    );
  }
}
