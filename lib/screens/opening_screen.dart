import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:enzaimev2/components/icons.dart';

class OpeningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background-opening-screen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 270,
                  ),
                  SvgPicture.asset(
                    enzaimeLogoText,
                    height: 62.46,
                    width: 238.23,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "এনজাইমে স্বাগতম!",
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  FlatButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 130),
                    color: Colors.white,
                    textColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(9.0),
                      ),
                    ),
                    onPressed: () {
                      //actions
                    },
                    child: Text(
                      "রেজিস্ট্রেশন",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  FlatButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 145),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(9.0),
                      ),
                    ),
                    onPressed: () {
                      //actions
                    },
                    child: Text(
                      "সাইন ইন",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
    ;
  }
}
