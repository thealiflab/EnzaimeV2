import 'package:enzaimev2/components/app_bottom_navigation_bar.dart';
import 'package:enzaimev2/screens/diagnosis_screen.dart';
import 'package:enzaimev2/screens/find_doctor_screen.dart';
import 'package:enzaimev2/screens/home_screen.dart';
import 'package:enzaimev2/screens/profile_screen.dart';
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
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFCFEFF),
      ),
      initialRoute: DiagnosisScreen.id,
      routes: {
        OpeningScreen.id: (context) => OpeningScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        DiagnosisScreen.id: (context) => DiagnosisScreen(),
        FindDoctorScreen.id: (context) => FindDoctorScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        //Widget
        AppBottomNavigationBar.id: (context) => AppBottomNavigationBar(),
      },
    );
  }
}
