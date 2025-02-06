
import 'package:flutter/material.dart';
import 'package:venture_hub/Frontend/Screens/home_screen.dart';
import 'package:venture_hub/Frontend/Screens/notification_page.dart';
import 'package:venture_hub/Frontend/Screens/profile_page.dart';
import 'package:venture_hub/Frontend/Screens/search_page.dart';

class NavBar extends StatefulWidget {
  NavBar();

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final PageController _pageViewController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        controller: _pageViewController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          HomeScreen(),
          SearchPage(),
          NotificationPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        // selectedItemColor: Colors.,
        // unselectedItemColor: Color(##666666),
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageViewController.jumpToPage(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
