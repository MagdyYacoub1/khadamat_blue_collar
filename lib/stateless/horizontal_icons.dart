import 'package:flutter/material.dart';
import 'package:khadamat_blue_coller/modes/examples.dart';

class HorizontalIcon extends StatelessWidget {
  final int index;

  const HorizontalIcon(this.index);

  void onTap(){

  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>{},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Image.asset(
            "assets/${Examples.examplesIcons[index]}",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
