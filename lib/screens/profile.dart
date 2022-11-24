import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({Key ? key}) :super (key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/kratos.jpg'),
            ),
            Text('Muhanif',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold
            ),),
            Text("Teknik Komputer",
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold
            ),),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color:Colors.teal
                ),title: Text("+62 0895 0669 7389",
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontSize: 20.0
                ),),
              )
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  "muhanifrafi@gmail.com",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900
                  ),
                ),
              ),
            )
          ],
        ),),
      ),
    );
  }

}