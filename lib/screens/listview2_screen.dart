import 'package:flutter/material.dart';

class Listview2 extends StatelessWidget {
  var games = ["pow", "fornite", "pacman", "mortal kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview tipo2'),
        ),
        body: ListView(
          children: [
            //spread
            ...games
                .map((games) => ListTile(
                      title: Text(games),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.pinkAccent),
                    ))
                .toList(),
          ],
        ));
  }
}
