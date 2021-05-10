import 'package:flutter/material.dart';
import 'package:khadamat_blue_coller/modes/examples.dart';
import 'package:khadamat_blue_coller/modes/services.dart';

import '../color.dart';
import '../styling.dart';
import 'bottom_app_bar.dart';
import 'grid_icon.dart';
import 'horizontal_icons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 6.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Search for a service provider.",
                          hintStyle: contextTextStyle,
                          prefixIcon: Icon(
                            Icons.search,
                            color: contextTextColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: IconButton(
                        icon: Image.asset(
                          "assets/surface1@2x.png",
                          width: 25.0,
                          height: 25.0,
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 35.0,
                      bottom: 10.0,
                    ),
                    child: Text(
                      "Especially for you",
                      style: smallTitleStyle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: mediaQuery.size.width * 0.35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return HorizontalIcon(index);
                  },
                  itemCount: Examples.examplesIcons.length,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      "All services",
                      style: smallTitleStyle,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10.0,
                    ),
                    child: Text(
                      "Browse technicians by service",
                      style: contextTextStyle,
                    ),
                  ),
                ],
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: Services.services.length,
                itemBuilder: (BuildContext context, int index) {
                  return GridIcon(index);
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}