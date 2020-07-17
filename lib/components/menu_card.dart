import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuCard extends StatelessWidget {
  MenuCard({@required this.Svg, @required this.cardTitle});

  final SvgPicture Svg;
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(7.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(.09),
              blurRadius: 25.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
            ),
          ],
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: cardTitle == "আরও" ? 40 : 0,
              ),
              Svg,
              SizedBox(
                height: cardTitle == "আরও" ? 30 : 20,
              ),
              Text(
                cardTitle,
                style: TextStyle(
                  fontSize: 21,
                  color: Color(0xFF344145),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}