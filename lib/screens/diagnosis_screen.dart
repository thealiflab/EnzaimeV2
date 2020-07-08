import 'package:flutter/material.dart';

class DiagnosisScreen extends StatefulWidget {
  static const String id = 'diagnosis_screen';

  @override
  _DiagnosisScreenState createState() => _DiagnosisScreenState();
}

class _DiagnosisScreenState extends State<DiagnosisScreen> {
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
          'রোগ নির্ণয়',
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
          child: Text("Diagnosis Screen"),
        ),
      ),
    );
  }
}
