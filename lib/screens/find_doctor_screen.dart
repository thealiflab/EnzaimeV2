import 'package:flutter/material.dart';

class FindDoctorScreen extends StatefulWidget {
  static const String id = 'find_doctor_screen';

  @override
  _FindDoctorScreenState createState() => _FindDoctorScreenState();
}

class _FindDoctorScreenState extends State<FindDoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Color(0xFF4F5E62),
        ),
        title: Text(
          'ডাক্তার খুঁজুন',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF4F5E62),
          ),
        ),
        elevation: 8,
      ),
      body: Center(
        child: Container(
          child: Text("Find Doctor Screen"),
        ),
      ),
    );
  }
}
