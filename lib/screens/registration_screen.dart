import 'package:flutter/material.dart';
import 'package:enzaimev2/components/constants.dart';
import 'package:enzaimev2/components/icons.dart';
import 'package:enzaimev2/components/text_field_container.dart';
import 'package:enzaimev2/components/gradient_button.dart';
import 'package:enzaimev2/components/social_floating_button.dart';

class RegistrationScreen extends StatelessWidget {
  static const String id = "registration_screen";

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
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "রেজিস্ট্রেশন করুন",
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
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'ইমেইল',
                        ),
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
                    TextFieldContainer(
                      child: TextField(
                        obscureText: true,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'কনফার্ম পাসওয়ার্ড',
                          suffixIcon: Icon(Icons.visibility_off),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                GradientButton(
                  onTap: () {},
                  buttonText: "রেজিস্ট্রেশন",
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'একাউন্ট আছে? ',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'সাইন ইন করুন',
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
