import 'package:flutter/material.dart';

class SliverEssenScreen extends StatefulWidget {
  @override
  _SliverEssenScreenState createState() => _SliverEssenScreenState();
}

class _SliverEssenScreenState extends State<SliverEssenScreen> {

  List<String> essen = [
    "snom",
    "snom",
    "snom",
    "snom",
    "snom",
    "snom",
    "snom",
    "snom",
    "snom",
    "snom",
    "snom",
    "snom",
    "snom",
    "snom",
    "snom",
    "snom"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hmmmmmmmmmmmm"),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                snap: true,
                pinned: true,
                floating: true,
                title: Center(child: Text("Speisen")),
                expandedHeight: 200,
                backgroundColor: Colors.grey,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                      "https://cdn.mos.cms.futurecdn.net/YjnFUK2xKrDWkkEsxGvhzb-320-80.jpg",
                      fit: BoxFit.cover),
                )),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                leading: Icon(Icons.local_dining),
                title: Text("${essen[index]}"),
                subtitle: Text("yehes"),
                trailing: RaisedButton(
                  child: Text("hai"),
                  onPressed: () {},
                ),
              );
            },
              childCount: 16,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
