import 'package:flutter/material.dart';
import 'package:karinas_business_card/constants.dart';
import 'package:karinas_business_card/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: kPurpleMain),
      home: MainScreen(),
    );
  }
}
