import 'package:flutter/material.dart';

class Horarios extends StatefulWidget {
  List horario = new List();
  String day, from;

  Horarios(List horario, String day, String from) {
    this.horario = horario;
    this.day = day;
    this.from = from;
  }
  @override
  HorariosState createState() =>
      new HorariosState(this.horario, this.day, this.from);
}

class HorariosState extends State<Horarios> {
  List horario = new List();
  String day, from;
  int _selected;
  HorariosState(List horario, String day, String from) {
    this.horario = horario;
    this.day = day;
    this.from = from;
  }

  _selectCard(int index) {
    setState(() {
      _selected != index ? _selected = index : _selected = -1;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("$day 411\n desde $from"),
      ),
      body: new ListView.builder(
        itemCount: horario == null ? 0 : horario.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            elevation: 3.5,
            color: _selected == index ? Colors.green[200] : Colors.green[50],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: new FlatButton(
              onPressed: () => _selectCard(index), //Push notifications
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
