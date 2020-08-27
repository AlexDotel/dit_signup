import 'package:flutter/material.dart';

import 'src/pages/signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doggies In Town',
      routes: {'signup': (context) => SignUpPage()},
      initialRoute: 'signup',
    );
  }
}
