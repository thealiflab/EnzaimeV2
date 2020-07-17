import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeProgressBar extends StatelessWidget {
  HomeProgressBar({@required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height * 0.32,
      right: 0,
      left: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          width: size.width * 0.85,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'আপনার প্রোফাইল ১০% সম্পূর্ণ হয়েছে',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF344145),
                      ),
                    ),
                    Text(
                      '১০০% সম্পূর্ণ করতে এখানে ট্যাপ করুন',
                      style: TextStyle(fontSize: 14, color: Color(0xFFC0D2D8)),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                CircularPercentIndicator(
                  radius: 50.0,
                  lineWidth: 5.0,
                  percent: 0.10,
                  center: Text("১০%"),
                  progressColor: Color(0xFF7c5fe7),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
