import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:dit_signup/src/utils/alert_dialog.dart' as utils;
import 'package:dit_signup/src/validations/validation_signup.dart';

class SignUpPage extends StatelessWidget {
  final header = 'Unete a la comunidad Doggies In Town';
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
    // final size = MediaQuery.of(context).size;
    final valService = Provider.of<SignUpValidation>(context);

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
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  headers(),
                  SizedBox(
                    height: 10,
                  ),
                  form(valService),
                  Expanded(child: Container()),
                  buttons(valService, context),
                ],
              ),
            ),
          ],
        ));
  }

  Widget headers() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Text(
            header,
            style: headerStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            sub,
            style: subStyle,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Widget form(SignUpValidation valService) {
    return Container(
      padding: EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: Column(children: [
        TextField(
          decoration: InputDecoration(
              fillColor: Colors.green[300],
              labelText: 'Nombre*',
              hintText: 'Escribe tu nombre',
              errorText: valService.getName.error),
          onChanged: (valor) => valService.changeName(valor),
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              fillColor: Colors.green[300],
              labelText: 'Email*',
              hintText: 'Escribe tu correo',
              errorText: valService.getEmail.error),
          onChanged: (valor) => valService.changeEmail(valor),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              fillColor: Colors.green[300],
              labelText: 'Contraseña*',
              hintText: 'Escribe tu contraseña',
              errorText: valService.getPss.error),
          onChanged: (valor) {
            valService.changePss(valor);
          },
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              fillColor: Colors.green[300],
              labelText: "Confirmar Contraseña",
              hintText: 'Escribe nuevamente tu contraseña*',
              errorText: valService.getconf.error),
          onChanged: (valor) {
            valService.changeConf(valor);
          },
        ),
      ]),
    );
  }

  Widget buttons(SignUpValidation valService, BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 60,
      ),
      child: Column(
        children: [
          RaisedButton(
            onPressed: () {
              if (!valService.isValid) {
                utils.mostrarAlerta(context, 'Rellene correctamente');
              } else {
                valService.submitData(context);
              }
            },
            // (!valService.isValid) ? null : valService.submitData(context),
            elevation: 0,
            color: Colors.green[300],
            textColor: Colors.white,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                child: Text('Crear Cuenta',
                    style: TextStyle(fontFamily: 'SF Regular', fontSize: 20))),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(height: 10),
          Text('Ahora no', style: subStyle)
        ],
      ),
    );
  }
}
