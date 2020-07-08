import 'package:flutter/material.dart';
import 'package:enzaimev2/screens/home_screen.dart';
import 'package:enzaimev2/screens/diagnosis_screen.dart';
import 'package:enzaimev2/screens/find_doctor_screen.dart';
import 'package:enzaimev2/screens/profile_screen.dart';

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
            title: Text("হোম"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rate_review,
                color: _currentIndex == 1 ? Colors.blue : Colors.black12),
            title: Text("রোগ নির্ণয়"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
                color: _currentIndex == 2 ? Colors.blue : Colors.black12),
            title: Text("ডাক্তার খুঁজুন"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
                color: _currentIndex == 3 ? Colors.blue : Colors.black12),
            title: Text("প্রোফাইল"),
          ),
        ],
      ),
    );
  }
}
