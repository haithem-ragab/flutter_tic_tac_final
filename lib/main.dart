import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_final/pages/start.dart';
import 'package:flutter_tic_tac_final/services/provider.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}
