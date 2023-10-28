import 'package:egypt_code/tabs/HomeScreen.dart';
import 'package:egypt_code/tabs/model/Orange.dart';
import 'package:egypt_code/tabs/model/etislat.dart';
import 'package:egypt_code/tabs/model/vodafone.dart';
import 'package:egypt_code/tabs/model/we.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.RouteName : (_) =>HomeScreen(),
        vodafone.routeName : (_) => vodafone(),
        orange.routeName : (_) => orange(),
        etisalat.routeName : (_) => etisalat(),
        we.routeName : (_) =>  we(),
      },
      initialRoute: HomeScreen.RouteName,
    );
  }
}
