import 'package:khadamat_blue_coller/stateful/bottomnavigationbar.dart';
import 'package:khadamat_blue_coller/stateless/favorites_screen (19).dart';
import 'package:flutter/material.dart';
import 'package:khadamat_blue_coller/stateless/main_screen_(7).dart';
import 'package:khadamat_blue_coller/stateless/new_order_screen_(15).dart';

Map<String, Widget Function(BuildContext)> routes = {
  FavoriteScreen().routeName: (ctx)=> FavoriteScreen(),
  MainScreen().routeName: (ctx)=>MainScreen(),
  NewOrderScreen15().routeName: (ctx) => NewOrderScreen15(),
  BottomNavigationBarExample().routeName: (ctx)=> BottomNavigationBarExample(),
};