import 'package:flutter/material.dart';

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
    final size = MediaQuery.of(context).size;

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              headers(),
              form(),
              buttons(),
            ],
          ),
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

  Widget form() {
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
          ),
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            fillColor: Colors.green[300],
            labelText: 'Email*',
            hintText: 'Escribe tu correo',
          ),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            fillColor: Colors.green[300],
            labelText: 'Contraseña*',
            hintText: 'Escribe tu contraseña',
          ),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            fillColor: Colors.green[300],
            labelText: 'Confirmar Contraseña*',
            hintText: 'Escribe nuevamente tu contraseña*',
          ),
        ),
      ]),
    );
  }

  buttons() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 60,),
      child: Column(
        children: [
          RaisedButton(
            onPressed: () {},
            elevation: 0,
            color: Colors.green[300],
            textColor: Colors.white,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                child: Text('Crear Cuenta')),
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
