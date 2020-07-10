import 'package:enzaimev2/components/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:enzaimev2/components/gradient_button.dart';

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
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                drbot,
                width: 90,
                height: 90,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'হ্যালো,',
                style: TextStyle(
                  fontSize: 35,
                  color: Color(0xFF29373B),
                ),
              ),
              Text(
                'আমি ডাঃ বট',
                style: TextStyle(
                  fontSize: 35,
                  color: Color(0xFF278CE3),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                'আমাদের এই সেবাটির মাধ্যমে আপনার শারীরিক ও মানসিক\n লক্ষণের ভিত্তিতে আপনার সম্ভাব্য রোগ নির্নয় করতে পারবেন।',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Color(0xFFA7BABF)),
              ),
              SizedBox(
                height: 95,
              ),
              GradientButton(
                onTap: () {},
                buttonText: 'শুরুকরুন',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
