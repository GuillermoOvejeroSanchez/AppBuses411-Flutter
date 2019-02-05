import 'package:flutter/material.dart';

import './horarios.dart';
import 'data.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    //Devuelve una clase tipo Widget
    return MaterialApp(
      home: Scaffold(
        appBar:
            AppBar(backgroundColor: Colors.green, title: Text("Horarios 411")),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Guillermo Ovejero",
                ),
                accountEmail: Text(
                  "guilleov7@gmail.com",
                ),
                decoration: BoxDecoration(
                  color: Colors.green.shade600,
                ),
              ),
              ListTile(
                title: Text("411 Laborables Perales"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        Horarios(Datos.getHorarioLaborablesPerales()))),
              ),
              ListTile(
                title: Text("411 Fines de semana Perales"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        Horarios(Datos.getHorarioFestivosPerales()))),
              ),
              Divider(
                color: Colors.green,
              ),
              ListTile(
                title: Text("411 Laborables Legazpi"),
                trailing: Icon(Icons.arrow_back),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        Horarios(Datos.getHorarioLaborablesLegazpi()))),
              ),
              ListTile(
                title: Text("411 Fines de semana Legazpi"),
                trailing: Icon(Icons.arrow_back),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        Horarios(Datos.getHorarioFestivosLegazpi()))),
              ),
            ],
          ),
        ),
        body: new Center(
            child: Column(children: [
          Icon(Icons.directions_bus, size: 300.0, color: Colors.green.shade600),
          Text(
            "* Viernes y visperas de festivo\n** Sabados",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          )
        ])),
      ),
    );
  }
}
