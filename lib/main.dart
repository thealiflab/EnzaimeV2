import 'package:enzaimev2/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'screens/opening_screen.dart';
import 'screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
      initialRoute: RegistrationScreen.id,
      routes: {
        OpeningScreen.id: (context) => OpeningScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
