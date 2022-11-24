import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage extends StatefulWidget {
  final String item;
  final String title;
  const DetailPage({Key? key, required this.item, required this.title})
      : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var temp;
  var deskripsi;
  var saat_ini;
  var kelembapan;
  var Kecepatan_angin;
  var kota;

  Future getWeather(String city) async {
    http.Response response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$city&units=metric&lang=id&appid=6060f6f5bdfb3e8eabd606c1e62e9c6f"));
    var result = jsonDecode(response.body);
    setState(() {
      this.temp = result['main']['temp'];
      this.deskripsi = result['weather'][0]['description'];
      this.saat_ini = result['weather'][0]['main'];
      this.kelembapan = result['main']['humidity'];
      this.Kecepatan_angin = result['wind']['speed'];
      this.kota = city;
    });
  }

  @override
  void initState() {
    super.initState();
    this.getWeather(widget.item);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(kota.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600)),
              ),
              Text(temp != null ? temp.toString() + "\u00B0" : "Loading",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600)),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  saat_ini != null ? saat_ini.toString() : "Loading",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.thermometerHalf),
                  title: Text("Suhu"),
                  trailing: Text(
                      temp != null ? temp.toString() + "\u00B0" : "Loading"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.cloud),
                  title: Text("Cuaca"),
                  trailing: Text(
                      deskripsi != null ? deskripsi.toString() : "Loading"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.sun),
                  title: Text("Kelembapan"),
                  trailing: Text(
                      kelembapan != null ? kelembapan.toString() : "Loading"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.thermometerHalf),
                  title: Text("Kecepatan angin"),
                  trailing: Text(Kecepatan_angin != null
                      ? Kecepatan_angin.toString()
                      : "Loading"),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
