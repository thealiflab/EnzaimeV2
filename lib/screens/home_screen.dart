import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:enzaimev2/components/icons.dart';
import 'package:enzaimev2/components/home_progress_bar.dart';
import 'package:enzaimev2/components/menu_card.dart';

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
          Padding(
            padding: EdgeInsets.only(
              top: 70,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                radius: 43,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/person.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 180),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "হ্যালো, মাহফুজ",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          HomeProgressBar(size: _size),
          Padding(
            padding: EdgeInsets.only(
              top: 320,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 5,
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: <Widget>[
                        MenuCard(
                          Svg: SvgPicture.asset(
                            diag,
                            width: 85,
                            height: 85,
                            fit: BoxFit.contain,
                          ),
                          cardTitle: "রোগ নির্ণয়",
                        ),
                        MenuCard(
                          Svg: SvgPicture.asset(
                            doctor2,
                            width: 80,
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                          cardTitle: "ডাক্তার খুজুন",
                        ),
                        MenuCard(
                          Svg: SvgPicture.asset(
                            nutritions,
                            width: 75,
                            height: 75,
                            fit: BoxFit.contain,
                          ),
                          cardTitle: "ডায়েট প্ল্যান",
                        ),
                        MenuCard(
                          Svg: SvgPicture.asset(
                            more,
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                          cardTitle: "আরও",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
