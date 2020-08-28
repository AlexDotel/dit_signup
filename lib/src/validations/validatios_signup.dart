import 'package:dit_signup/src/validations/validation_item.dart';
import 'package:flutter/material.dart';

class SignUpValidation with ChangeNotifier {
  //En este clase validaremos los valores recibidos en el formulario
  //Utilizando el Provider, que es mas simple que el Inherited BABY XD!

  ValidationItem _name = ValidationItem(null, null);
  ValidationItem _email = ValidationItem(null, null);
  ValidationItem _pss = ValidationItem(null, null);
  ValidationItem _conf = ValidationItem(null, null);

  //Declaramos los Getters... Que devuelven el valor almacenado.
  ValidationItem get getName => _name;
  ValidationItem get getEmail => _email;
  ValidationItem get getPss => _pss;
  ValidationItem get getconf => _conf;

  bool get isValid {
    if (_name.value != null &&
        _email.value != null &&
        _pss.value != null &&
        _conf.value != null) {
      return true;
    } else {
      return false;
    }
  }

  //Declaramos los Setters... Que a su paso llevaran a cabo la validacion.
  void changeName(String nombre) {
    (nombre.length > 1)
        ? _name = ValidationItem(nombre, null)
        : _name = ValidationItem(null, "Nombre muy corto");
    notifyListeners();
  }

  void changeEmail(String correo) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    //El de arriba es un patron para validad un email.
    RegExp regExp = new RegExp(pattern);
    //Esta es una expresion regular que valida si se cumple al patron de arriba.

    regExp.hasMatch(correo)
        ? _email = ValidationItem(correo, null)
        : _email = ValidationItem(null, 'Email no es correcto');
    notifyListeners();
  }

  void changePss(String pss) {
    (pss.length >= 5)
        ? _pss = ValidationItem(pss, null)
        : _pss = ValidationItem(null, "Minimo 5 caracteres");
    notifyListeners();
  }

  void changeConf(String conf) {
    if (conf.length >= 5) {
      if (conf == _pss.value) {
        _conf = ValidationItem(conf, null);
      } else {
        _conf = ValidationItem(null, "No coinciden");
      }
    } else {
      _conf = ValidationItem(null, "Minimo 5 caracteres");
    }

    notifyListeners();
  }

  void submitData() {
    print('Enhorabuena ${_name.value}, te has registrado correctamente.');
  }
}
