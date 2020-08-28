import 'package:dit_signup/src/validations/validatios_signup.dart';
import 'package:flutter/material.dart';

import 'src/pages/signup_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SignUpValidation()
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doggies In Town',
        routes: {'signup': (context) => SignUpPage()},
        initialRoute: 'signup',
      ),
    );
  }
}
