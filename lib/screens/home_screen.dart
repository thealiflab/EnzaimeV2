import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          'হোম',
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
          child: Text("Home Screen"),
        ),
      ),
    );
  }
}
