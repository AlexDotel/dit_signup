import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  
  final header = 'Unete a la comunidad de Doggies In Town';
  final sub = 'Todo para tu perro en la palma de tu mano';
  
  final headerStyle = TextStyle(
      color: Colors.green[300],
      fontWeight: FontWeight.bold,
      fontSize: 30,
      fontFamily: 'SF Regular');

  final subStyle = TextStyle(
      color: Colors.green[300],
      // fontWeight: FontWeight.bold,
      fontSize: 18,
      fontFamily: 'SF Regular');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.green[300]
        ),
        title: Icon(
          Icons.android,
          color: Colors.green[300],
        ),
      ),
      body: Column(
        children: [
          headers(),
          // form(),
          // buttons(),
        ],
      ));
  }

  Widget headers() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(children: [
        Text(
          header,
          style: headerStyle,
          textAlign: TextAlign.center, 
        ),
        Text(
          sub,
          style: subStyle,
          textAlign: TextAlign.center,
        )
      ],),
    );
  }
}
