import 'package:flutter/material.dart';
import 'package:khadamat_blue_coller/localization/localization_constants.dart';
import 'package:khadamat_blue_coller/modes/services.dart';
import 'package:khadamat_blue_coller/styling.dart';

import '../color.dart';

class GridIcon extends StatelessWidget {
  final int index;

  const GridIcon(this.index);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: ()=>{},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.0),
            border: Border.all(
              color: contextTextColor,
              width: 2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/" + Services.services[index].serviceIcon,
                  height: 45.0,
                ),
                SizedBox(height: 10.0),
                Text(
                  getTranslated(context, Services.services[index].serviceName),
                  overflow: TextOverflow.ellipsis,
                  style: contextTextStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
