import 'package:flutter/material.dart';

import '../color.dart';
import '../styling.dart';



class WorkerCard extends StatelessWidget {
  const WorkerCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Image.asset(
              "assets/worker.png",
              width: mediaQuery.size.width * 0.25,
              height: mediaQuery.size.width * 0.25,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: skillContainerColor,
                    borderRadius:
                    BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      "Carpenter",
                      style: skillTextStyle,
                    ),
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  "Name of service provider",
                  style: blackLargeTextStyle,
                ),
                SizedBox(height: 4.0),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Average:",
                          style: contextTextStyle,
                        ),
                        Text(
                          "1000 - 3000 EGP",
                          style: blackSmallTextStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Schedule",
                          style: contextTextStyle,
                        ),
                        Text(
                          "12AM : 12PM",
                          style: blackSmallTextStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
