import 'package:flutter/material.dart';
import 'package:enzaimev2/screens/home_screen.dart';
import 'package:enzaimev2/screens/diagnosis_screen.dart';
import 'package:enzaimev2/screens/find_doctor_screen.dart';
import 'package:enzaimev2/screens/profile_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:enzaimev2/components/icons.dart';

class AppBottomNavigationBar extends StatefulWidget {
  static const String id = 'app_bottom_navigation_bar';

  @override
  _AppBottomNavigationBarState createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _bottomNavScreen = [
    HomeScreen(),
    DiagnosisScreen(),
    FindDoctorScreen(),
    ProfileScreen(),
  ];

  void onTappedOption(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomNavScreen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 12.0,
        onTap: onTappedOption,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home,
              color: _currentIndex == 0 ? Colors.blue : Colors.black12,
            ),
            title: Text(
              "হোম",
              style: TextStyle(
                color:
                    _currentIndex == 0 ? Color(0xFF278CE3) : Color(0xFF98ADB2),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rate_review,
                color: _currentIndex == 1 ? Colors.blue : Colors.black12),
//            SvgPicture.asset(
//              heart,
//              height: 20.0,
//              width: 20.0,
//              allowDrawingOutsideViewBox: true,
//            ),
            title: Text(
              "রোগ নির্ণয়",
              style: TextStyle(
                color:
                    _currentIndex == 1 ? Color(0xFF278CE3) : Color(0xFF98ADB2),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
                color: _currentIndex == 2 ? Colors.blue : Colors.black12),

//            SvgPicture.asset(
//              doctor,
//              height: 20.0,
//              width: 20.0,
//              allowDrawingOutsideViewBox: true,
//            ),
            title: Text(
              "ডাক্তার খুঁজুন",
              style: TextStyle(
                color:
                    _currentIndex == 0 ? Color(0xFF278CE3) : Color(0xFF98ADB2),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
                color: _currentIndex == 3 ? Colors.blue : Colors.black12),
            title: Text(
              "প্রোফাইল",
              style: TextStyle(
                color:
                    _currentIndex == 0 ? Color(0xFF278CE3) : Color(0xFF98ADB2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
