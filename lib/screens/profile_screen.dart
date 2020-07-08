import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'profile_screen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          'প্রোফাইল',
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
          child: Text("Profile Screen"),
        ),
      ),
    );
  }
}
