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
            icon: SvgPicture.asset(
              home,
              height: 22.0,
              width: 22.0,
              allowDrawingOutsideViewBox: true,
            ),
            title: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "হোম",
                style: TextStyle(
                  color: _currentIndex == 0
                      ? Color(0xFF278CE3)
                      : Color(0xFF98ADB2),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              heartSel,
              height: 22.0,
              width: 22.0,
              allowDrawingOutsideViewBox: true,
            ),

//            Icon(Icons.rate_review,
//                color: _currentIndex == 1 ? Colors.blue : Colors.black12),

            title: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "রোগ নির্ণয়",
                style: TextStyle(
                  color: _currentIndex == 1
                      ? Color(0xFF278CE3)
                      : Color(0xFF98ADB2),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              doctorsearch,
              height: 22.0,
              width: 22.0,
              allowDrawingOutsideViewBox: true,
            ),
            title: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "ডাক্তার খুঁজুন",
                style: TextStyle(
                  color: _currentIndex == 0
                      ? Color(0xFF278CE3)
                      : Color(0xFF98ADB2),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              profile,
              height: 22.0,
              width: 22.0,
              allowDrawingOutsideViewBox: true,
            ),
            title: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "প্রোফাইল",
                style: TextStyle(
                  color: _currentIndex == 0
                      ? Color(0xFF278CE3)
                      : Color(0xFF98ADB2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
