import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:dit_signup/src/models/user_model.dart';

class SignUpService {
  final _url = 'http://dev.api.doggiesintown.com/dit-user-management-ms/users';

  Future<bool> createUser(UserModel usuario) async {
    final user = userModelToJson(usuario);
    final resp = await http.post(
      _url,
      headers: {"Content-Type": "application/json"},
      body: user,
    );
    final decodedData = json.decode(resp.body);

    print(decodedData);

    return true;
  }
}
