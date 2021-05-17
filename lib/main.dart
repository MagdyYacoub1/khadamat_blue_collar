import 'package:flutter/material.dart';
import 'package:khadamat_blue_coller/routes.dart';
import 'package:khadamat_blue_coller/stateful/bottomnavigationbar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:khadamat_blue_coller/stateless/favorites_screen%20(19).dart';
import 'package:khadamat_blue_coller/stateless/main_screen_(7).dart';
import 'package:provider/provider.dart';

import 'localization/localization_constants.dart';
import 'localization/my_localization.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MyLocalization.withoutLocal(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<MyLocalization>(context).getLocale(),
      builder: initialPageBuilder,
    );
  }
}

Widget initialPageBuilder(context, snapshot) {
  if (snapshot.connectionState == ConnectionState.none ||
      snapshot.connectionState == ConnectionState.waiting) {
    return CircularProgressIndicator();
  } else if (snapshot.connectionState == ConnectionState.done) if (snapshot
      .hasError) {
    return Text('Error: ${snapshot.error}');
  } else {
    Locale fetchedLocale = snapshot.data;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: fetchedLocale,
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      localeResolutionCallback: pickLocale,
      home: SafeArea(
        child: BottomNavigationBarExample(),
      ),
      routes: routes,
    );
  }
  else {
    return null;
  }
}
