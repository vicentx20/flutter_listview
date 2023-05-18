import 'package:flutter/material.dart';

class Listview1 extends StatelessWidget {
  var games = ["pow", "fornite", "pacman", "mortal kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview tipo1'),
        ),
        body: ListView(
          children: [
            //spread
            ...games
                .map((games) => ListTile(
                      title: Text(games),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.pinkAccent),
                      onTap: () {
                        var seleccion = games;
                        print(seleccion);
                      },
                    ))
                .toList(),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            )
          ],
        ));
  }
}
