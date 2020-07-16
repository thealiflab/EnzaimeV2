import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: 20,
    horizontal: 18,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(12.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFFC4D5D9),
      width: 1.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(12.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.blueAccent,
      width: 2.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(12.0),
    ),
  ),
  hintText: "নাম",
  hintStyle: TextStyle(
    fontSize: 19,
  ),
);
