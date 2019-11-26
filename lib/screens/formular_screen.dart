import 'package:flutter/material.dart';
import 'package:flutter_hero_animation_app/model/data_model.dart';
import 'package:flutter_hero_animation_app/model/rechner.dart';

class PokeFormular extends StatefulWidget {
  @override
  _PokeFormularState createState() => _PokeFormularState();
}

class _PokeFormularState extends State<PokeFormular> {
  final TextEditingController _pkmController = TextEditingController();
  final TextEditingController _regionController = TextEditingController();
  final TextEditingController _genController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welchen Typ hat das Pkm?"),
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(children: <Widget>[
            TextFormField(
              controller: _pkmController,
              decoration: InputDecoration(labelText: "Pokemon Name"),
            ),
            TextFormField(
              controller: _regionController,
              decoration: InputDecoration(labelText: "Region (Freiwillig)"),
            ),
            TextFormField(
              controller: _genController,
              decoration: InputDecoration(labelText: "Generation (Freiwillig)"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RaisedButton(
                onPressed: () {
                  DataModel.r.a = double.parse(_pkmController.text);
                  DataModel.r.b = double.parse(_regionController.text);
                  DataModel.r.rechne();
                },
                child: Text("Los geht's"),
              ),
            )
          ]),
        ));
  }
}
