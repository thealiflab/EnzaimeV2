import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialFloatingButton extends StatelessWidget {
  final String logo;

  SocialFloatingButton({@required this.logo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, bottom: 25),
      child: FloatingActionButton(
        elevation: 8,
        onPressed: () {},
        child: SvgPicture.asset(
          logo,
          height: 28,
          width: 28,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
