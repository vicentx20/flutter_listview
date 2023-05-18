import 'package:flutter/material.dart';

class Listview2 extends StatelessWidget {
  var games = ["pow", "fornite", "pacman", "mortal kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview tipo2'),
        ),
        body: ListView.separated(
          //obtener el tamaño de mi lista
          itemCount: games.length,
          itemBuilder: (context, index) => ListTile(
              //asignamos el titulo a partir de mi lista
              title: Text(games[index]),
              //asignamos el icono de cada elemento
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink),
              onTap: () {
                var seleccion = games[index];
                print(seleccion);
              }),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
