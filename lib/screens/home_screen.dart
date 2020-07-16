import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:enzaimev2/components/icons.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
              top: 330,
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
//            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Svg,
              SizedBox(
                height: 20,
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
