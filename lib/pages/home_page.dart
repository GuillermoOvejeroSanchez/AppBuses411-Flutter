import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './horarios.dart';
import 'data.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  String laborable = "Laborables";
  String festivo = "Festivos";
  String perales = "Perales";
  String legazpi = "Legazpi";
  Widget build(BuildContext context) {
    //Devuelve una clase tipo Widget
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Horarios 411"),
          elevation: 1.0,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Wilson",
                ),
                accountEmail: Text(
                  "Github code",
                ),
                onDetailsPressed: _launchURL,
                decoration: BoxDecoration(
                  color: Colors.green.shade600,
                ),
              ),
              ListTile(
                title: Text("411 Laborables Perales"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Horarios(
                        Datos.getHorarioLaborablesPerales(),
                        laborable,
                        perales))),
              ),
              ListTile(
                title: Text("411 Fines de semana Perales"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Horarios(
                        Datos.getHorarioFestivosPerales(), festivo, perales))),
              ),
              Divider(
                color: Colors.green,
              ),
              ListTile(
                title: Text("411 Laborables Legazpi"),
                trailing: Icon(Icons.arrow_back),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Horarios(
                        Datos.getHorarioLaborablesLegazpi(),
                        laborable,
                        legazpi))),
              ),
              ListTile(
                title: Text("411 Fines de semana Legazpi"),
                trailing: Icon(Icons.arrow_back),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Horarios(
                        Datos.getHorarioFestivosLegazpi(), festivo, legazpi))),
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

_launchURL() async {
  const url = 'https://github.com/GuillermoOvejeroSanchez/AppBuses411-Flutter';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
