import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:dit_signup/src/models/user_model.dart';

class SignUpService {
  final _url = 'http://dev.api.doggiesintown.com/dit-user-management-ms/users';

  Future<Map<String, dynamic>> createUser(UserModel usuario) async {
    final user = userModelToJson(usuario);
    final resp = await http.post(
      _url,
      headers: {"Content-Type": "application/json"},
      body: user,
    );

    final Map<String, dynamic> decodedResp = json.decode(resp.body);
    print(decodedResp);

    if (decodedResp.containsKey('error')) {
      return {'ok': false, 'error': decodedResp['error']};
    } else {
      return {'ok': true, 'mensaje': 'Enhorabuena, eres uno de los nuestros'};
    }
  }
}
