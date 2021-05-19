import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khadamat_blue_coller/localization/localization_constants.dart';
import 'package:khadamat_blue_coller/stateful/bottomnavigationbar.dart';
import 'package:khadamat_blue_coller/stateless/main_screen_(7).dart';

import '../color.dart';
import '../styling.dart';

class OrderDoneSuccessfullyAlert extends StatelessWidget {
  const OrderDoneSuccessfullyAlert({Key key}) : super(key: key);

  void goToMain(BuildContext context) {
    Navigator.of(context).pushNamed(BottomNavigationBarExample().routeName);
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double width = mediaQuery.size.width * 0.3;
    const double height = 45;
    return Center(
      child: Container(
        width: mediaQuery.size.width * 0.8,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  getTranslated(context, "ordered_successfully"),
                  style: blackLargeTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                Container(
                  height: mediaQuery.size.height * 0.3,
                  width: mediaQuery.size.width * 0.4,
                  child: Column(
                    children: [
                      Image.asset("assets/order_succeded.png"),
                      SizedBox(height: 10.0),
                      Text(
                        getTranslated(context, "contact_technician"),
                        style: contextTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () => goToMain(context),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(width, height)),
                    backgroundColor:
                        MaterialStateProperty.all(activeContextTextColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      getTranslated(context, "go_main_screen"),
                      style: buttonTextStyle,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
