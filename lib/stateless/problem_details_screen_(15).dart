import 'package:flutter/material.dart';

import '../color.dart';
import '../styling.dart';

class ProblemDetails extends StatelessWidget {
  const ProblemDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 25.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add pictures for the problem",
              style: smallTitleStyle,
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: BoxBorderColor,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add_circle_outline_rounded,
                      color: BoxBorderColor,
                      size: 40.0,
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: BoxBorderColor,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add_circle_outline_rounded,
                      color: BoxBorderColor,
                      size: 40.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              "Problem description",
              style: smallTitleStyle,
            ),
            SizedBox(height: 10.0),
            TextField(
              maxLines: 5,
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
                    "Please describe the problem clearly so that the technician can understand it and make the most appropriate offer",
                hintStyle: contextTextStyle,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Determine the date and time",
              style: smallTitleStyle,
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(
                  child: TextField(
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
                      "12 PM",
                      hintStyle: contextTextStyle,
                    ),
                  ),
                ),
                SizedBox(width: 25.0),
                Expanded(
                  child: TextField(
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
                      "20/4/2021",
                      hintStyle: contextTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
