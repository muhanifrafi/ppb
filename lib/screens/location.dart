import 'package:flutter/material.dart';
import 'package:mod3_kel33/screens/detail.dart';

class LocationPage extends StatelessWidget {
  final List nama = [
    "Tokyo",
    "London",
    "Madrid",
    "Berlin",
    "Beijing",
    "Barcelona",
    "Manchester",
    "Munich",
    "Seoul",
    "Moscow",
    "Ankara",
    "Amsterdam",
    "Kyoto",
    "Osaka",
    "Hiroshima",
    "Nagasaki",
    "Kuala Lumpur",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Cuaca'),
      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: nama.length,
      itemBuilder: (_, index) {
        return ListTile(
            title: Text(nama[index]),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailPage(item: nama[index], title: nama[index])));
            });
      },
    );
  }
}
