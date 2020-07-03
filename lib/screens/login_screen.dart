import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//TODO-1: Watch messenger app tutorial before 10 no video
//TODO-2: Add border focus functionality
//TODO-3: Screen overflow have to solve
//TODO-4: Refactor

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black87,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "স্বাগতম!",
                    style: TextStyle(
                        fontSize: 40.0,
                        color: Color(0xFF278CE3),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "সাইন ইন করুন",
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Color(0xFF4F5E62),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextFieldContainer(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "নাম",
                        hintStyle: TextStyle(
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                  TextFieldContainer(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "পাসওয়ার্ড",
                        hintStyle: TextStyle(
                          fontSize: 19,
                        ),
                        suffixIcon: Icon(Icons.visibility),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 12,
                  right: 30,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'পাসওয়ার্ড ভুলে গেছেন?',
                    style: TextStyle(fontSize: 16, color: Color(0xFF344145)),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GradientButton(
                onTap: () {},
                buttonText: "সাইন ইন",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;
  GradientButton({this.buttonText, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 62.0,
      child: RaisedButton(
        onPressed: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80.0),
        ),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF8659E7), Color(0xFF00A2E2)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(12.0)),
          child: Container(
            constraints:
                BoxConstraints(maxWidth: size.width * 0.9, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  TextFieldContainer({this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.all(12.0),
      width: size.width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFC4D5D9),
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 22),
        child: child,
      ),
    );
  }
}
