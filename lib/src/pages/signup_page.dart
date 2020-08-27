import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final header = 'Unete a la comunidad de Doggies In Town';
  final headerStyle = TextStyle(
      color: Colors.green[300],
      fontWeight: FontWeight.bold,
      fontSize: 30,
      fontFamily: 'SF Regular');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Icon(Icons.arrow_back_ios, color: Colors.green[300]),
          title: Icon(
            Icons.android,
            color: Colors.green[300],
          ),
        ),
        body: Column(
          children: [
            Text(
              header,
              style: headerStyle,
            )
          ],
        ));
  }
}
