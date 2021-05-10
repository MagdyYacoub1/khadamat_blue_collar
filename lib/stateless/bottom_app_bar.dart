import 'package:flutter/material.dart';

import '../color.dart';
import '../styling.dart';


class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
        height: 65.0,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: ()=>{},
                child: Column(
                  children: [
                    Icon(
                      Icons.format_list_numbered_rounded,
                      size: 35.0,
                      color: contextTextColor,
                    ),
                    Text(
                      "List",
                      style: contextTextStyle,
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: ()=>{},
                child: Column(
                  children: [
                    Icon(
                      Icons.format_align_center_rounded,
                      size: 35.0,
                      color: contextTextColor,
                    ),
                    Text(
                      "Orders",
                      style: contextTextStyle,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: ()=>{},
                child: Column(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 35.0,
                      color: contextTextColor,
                    ),
                    Text(
                      "Favorite",
                      style: contextTextStyle,
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: ()=>{},
                child: Column(
                  children: [
                    Icon(
                      Icons.widgets_outlined,
                      size: 35.0,
                      color: contextTextColor,
                    ),
                    Text(
                      "Services",
                      style: contextTextStyle,
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: ()=>{},
                child: Column(
                  children: [
                    Icon(
                      Icons.map_outlined,
                      size: 35.0,
                      color: contextTextColor,
                    ),
                    Text(
                      "Map",
                      style: contextTextStyle,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
