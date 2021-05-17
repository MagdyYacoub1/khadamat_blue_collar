import 'package:flutter/material.dart';
import 'package:khadamat_blue_coller/color.dart';
import 'package:khadamat_blue_coller/localization/localization_constants.dart';
import 'package:khadamat_blue_coller/stateful/bottom_app_bar.dart';
import 'package:khadamat_blue_coller/stateless/worker_card.dart';
import 'package:khadamat_blue_coller/stateless/worker_card_with_favorite.dart';

import '../styling.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key key}) : super(key: key);
  final String routeName = "./FavoritesScreen";

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  int colorIndex = 0;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(

      body: Stack(
        children: [
          Image.asset(
            "assets/stack_layer1.png",
            width: mediaQuery.size.width,
          ),
          SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                    left: 30.0,
                    right: 30.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        getTranslated(context, "favorite"),
                        style: TitleTextStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * 0.04),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      right: 20.0,
                      left: 20.0,
                      bottom: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () => {
                                setState(() {
                                  colorIndex = 0;
                                })
                              },
                              child: Column(
                                children: [
                                  Text(
                                    getTranslated(context, "All"),
                                    style: colorIndex == 0
                                        ? TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF6E8AD5),
                                          )
                                        : TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFFB2B2B2),
                                          ),
                                  ),
                                  Container(
                                    width: 30.0,
                                    child: Divider(
                                      color: colorIndex == 0
                                          ? Color(0xFF6E8AD5)
                                          : Color(0xFFB2B2B2),
                                      thickness: 3.0,
                                      indent: 4.0,
                                      endIndent: 1.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10.0),
                            InkWell(
                              onTap: () => {
                                setState(() {
                                  colorIndex = 1;
                                })
                              },
                              child: Column(
                                children: [
                                  Text(
                                    getTranslated(context, "Open"),
                                    style: colorIndex == 1
                                        ? TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF6E8AD5),
                                          )
                                        : TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFFB2B2B2),
                                          ),
                                  ),
                                  Container(
                                    width: 30.0,
                                    child: Divider(
                                      color: colorIndex == 1
                                          ? Color(0xFF6E8AD5)
                                          : Color(0xFFB2B2B2),
                                      thickness: 3.0,
                                      indent: 4.0,
                                      endIndent: 1.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10.0),
                            InkWell(
                              onTap: () => {
                                setState(() {
                                  colorIndex = 2;
                                })
                              },
                              child: Column(
                                children: [
                                  Text(
                                    getTranslated(context, "Closed"),
                                    style: colorIndex == 2
                                        ? TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF6E8AD5),
                                          )
                                        : TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFFB2B2B2),
                                          ),
                                  ),
                                  Container(
                                    width: 30.0,
                                    child: Divider(
                                      color: colorIndex == 2
                                          ? Color(0xFF6E8AD5)
                                          : Color(0xFFB2B2B2),
                                      thickness: 3.0,
                                      indent: 4.0,
                                      endIndent: 1.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            //bottom: 100.0
                          ),
                          child: Container(
                            height: mediaQuery.size.height * 0.64,
                            child: ListView.builder(
                                itemCount: 10,
                                padding: EdgeInsets.all(8.0),
                                itemBuilder: (context, index) {
                                  return WorkerCardWithFavorite();
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
