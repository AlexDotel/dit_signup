import 'package:flutter/material.dart';

void mostrarAlerta(BuildContext context, String msj) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Importante'),
          content:
              // msj.contains('Bad Reques') ? Text('Algo va mal!') :
              Text(msj),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      });
}
