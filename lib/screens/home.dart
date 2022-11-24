import 'package:flutter/material.dart';
import 'package:mod3_kel33/screens/detail.dart';

class HomePage extends StatelessWidget {
  final List nama = [
    "Bandung",
    "Jakarta",
    "Semarang",
    "Bekasi",
    "Surabaya",
    "Yogyakarta",
    "Solo",
    "Malang",
    "Medan",
    "Palembang",
    "Jambi",
    "Lampung",
    "Cimahi",
    "Tegal",
    "Aceh",
    "Denpasar",
    "Bogor",
    "Subang",
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
