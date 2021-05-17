import 'package:flutter/material.dart';
import 'package:khadamat_blue_coller/styling.dart';

import '../color.dart';


class ChooseLocation extends StatelessWidget {
  const ChooseLocation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: mediaQuery.size.height * 0.6,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 25.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose Location",
              style: smallTitleStyle,
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    width: 3.0,
                    color: BoxBorderColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    width: 3.0,
                    color: BoxBorderColor,
                  ),
                ),
                hintText:
                "Enter Location",
                hintStyle: contextTextStyle,
              ),
            ),
            SizedBox(height: 10.0),
            Image.asset("assets/map_placeholder.png"), // need to be replaced with a real map API.
          ],
        ),
      ),
    );
  }
}
