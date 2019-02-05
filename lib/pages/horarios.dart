import 'package:flutter/material.dart';

class Horarios extends StatefulWidget {
  List horario = new List();

  Horarios(List horario) {
    this.horario = horario;
  }

  @override
  HorariosState createState() => new HorariosState(this.horario);
}

class HorariosState extends State<Horarios> {
  List horario = new List();
  HorariosState(List horario) {
    this.horario = horario;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Laborables 411\n desde Perales"),
      ),
      body: new ListView.builder(
        itemCount: horario == null ? 0 : horario.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            elevation: 3.5,
            color: Colors.green[50],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: new FlatButton(
              onPressed: null, //Push notifications
              child: Text(
                horario[index],
                style: TextStyle(color: Colors.black87),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Data {}
