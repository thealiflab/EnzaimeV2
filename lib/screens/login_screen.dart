import 'package:flutter/material.dart';
import 'package:enzaimev2/components/constants.dart';
import 'package:enzaimev2/components/icons.dart';
import 'package:enzaimev2/components/text_field_container.dart';
import 'package:enzaimev2/components/gradient_button.dart';
import 'package:enzaimev2/components/social_floating_button.dart';

class LoginScreen extends StatelessWidget {
  static const String id = "login_screen";

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
          child: SingleChildScrollView(
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
                        decoration: kTextFieldDecoration,
                      ),
                    ),
                    TextFieldContainer(
                      child: TextField(
                        obscureText: true,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'পাসওয়ার্ড',
                          suffixIcon: Icon(Icons.visibility_off),
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
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'পাসওয়ার্ড ভুলে গেছেন?',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF344145)),
                      ),
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
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'কোন একাউন্ট নেই? ',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'রেজিস্ট্রেশন করুন',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF278CE3),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 25,
                    top: 40,
                    bottom: 30,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'অথবা',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF9CAAAF),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    SocialFloatingButton(
                      logo: facebooklogo,
                    ),
                    SocialFloatingButton(
                      logo: twitterlogo,
                    ),
                    SocialFloatingButton(
                      logo: googlelogo,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
