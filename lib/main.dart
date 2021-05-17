import 'package:flutter/material.dart';
import 'package:khadamat_blue_coller/stateless/main_screen_(7).dart';
import 'package:khadamat_blue_coller/stateless/new_order_screen_(15).dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: NewOrderScreen15(),
      ),
    );
  }
}
