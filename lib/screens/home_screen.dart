import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:enzaimev2/components/icons.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.white,
//        leading: Icon(
//          Icons.menu,
//          color: Color(0xFF4F5E62),
//        ),
//        title: Text(
//          'হোম',
//          style: TextStyle(
//            fontSize: 18,
//            fontWeight: FontWeight.w600,
//            color: Color(0xFF4F5E62),
//          ),
//        ),
//        elevation: 8,
//      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: _size.height * 0.36,
            width: double.infinity,
            child: SvgPicture.asset(
              homeTop,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.menu,
                  size: 32,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: _size.height * 0.32,
            right: 0,
            left: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                width: _size.width * 0.85,
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
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('আপনার প্রোফাইল ১০% সম্পূর্ণ হয়েছে'),
                        Text('১০০% সম্পূর্ণ করতে এখানে ট্যাপ করুন'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
