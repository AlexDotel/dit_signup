import 'package:flutter/material.dart';

class ThankPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
        body: Container(child: Text('Nombre')));
  }
}
