import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return fondoApp();
  }

  Widget fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.6, 1.5],
              colors: [Colors.indigo, Colors.teal])),
    );
    return Stack(
      children: <Widget>[
        gradiente,
        SafeArea(
            child: ListView(
          children: [
            _cardPersonalizado(
                "Renato Ferreyros",
                '33',
                'Licenciado en Derecho por la Universidad de Navarra en 1996 ',
                '2007',
                'Jurídico-económica',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAyR6cKoq820XxkT9snparD-Qusv-13wbgfg&usqp=CAU'),
            _cardPersonalizado(
                "Renato Ferreyros",
                '33',
                'Licenciado en Derecho por la Universidad de Navarra en 1996 ',
                '2007',
                'Jurídico-económica',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAyR6cKoq820XxkT9snparD-Qusv-13wbgfg&usqp=CAU'),
            _cardPersonalizado(
                "Renato Ferreyros",
                '33',
                'Licenciado en Derecho por la Universidad de Navarra en 1996 ',
                '2007',
                'Jurídico-económica',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAyR6cKoq820XxkT9snparD-Qusv-13wbgfg&usqp=CAU'),
            _cardPersonalizado(
                "Renato Ferreyros",
                '33',
                'Licenciado en Derecho por la Universidad de Navarra en 1996 ',
                '2007',
                'Jurídico-económica',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAyR6cKoq820XxkT9snparD-Qusv-13wbgfg&usqp=CAU'),
            _cardPersonalizado(
                "Renato Ferreyros",
                '33',
                'Licenciado en Derecho por la Universidad de Navarra en 1996 ',
                '2007',
                'Jurídico-económica',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAyR6cKoq820XxkT9snparD-Qusv-13wbgfg&usqp=CAU')
          ],
        ))
      ],
    );
  }

  Widget _cardPersonalizado(String nom, String edad, String estudios,
      String experiencia, String especialidad, String urlFoto) {
    final _containButton = Card(
      shadowColor: Colors.transparent,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromRGBO(20, 150, 110, 1.0),
        ),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 120,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              //mainAxisAlignment: MainAxisAlignment.,
              children: [
                Text(
                  ' $nom ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.location_on, size: 12, color: Colors.black),
                Text(
                  ' Lima  ',
                )
              ],
            ),
            ListTile(
              leading: Container(
                width: 60,
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("$urlFoto"),
                    )),
              ),
              //title: Text('Sr. $nom '),
              subtitle: Column(
                children: [
                  Text(
                    "Abogado en ejercicio desde $experiencia ",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Especialidad: $especialidad.",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " $edad años",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$estudios",
              style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );

    return _containButton;
  }
}
