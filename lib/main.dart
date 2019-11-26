import 'package:flutter/material.dart';
import 'package:flutter_hero_animation_app/screens/formular_screen.dart';
import 'package:flutter_hero_animation_app/sliver_essen_screen.dart';

import 'model/data_model.dart';

void main() {
  DataModel dm = new DataModel();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hungerino',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PokeFormular(),
    );
  }
}

