import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  void onTap(int index) {
    setState(() {
      currentIndex = index;
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
          onTap: (index) => onTap(index),
          elevation: 150.0,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedLabelStyle: activeContextTextStyle,
          unselectedLabelStyle: contextTextStyle,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: activeContextTextColor,
          unselectedItemColor: contextTextColor,
          iconSize: 30.0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.format_list_numbered_rounded),
              label: "List",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.format_align_center_rounded),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.widgets_outlined),
              label: "Services",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              label: "Map",
            ),
          ],
        ),
      ),
    );
  }
}
