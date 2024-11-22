import 'package:flutter/material.dart';
import 'package:news_app_/pages/home.dart';
import 'package:news_app_/pages/setting.dart';
import 'package:news_app_/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: NavigationBarPage(),
    );
  }
}

class NavigationBarPage extends StatefulWidget {
  @override
  _NavigationBarPageState createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    Home(),
    SettingsPage(),
    HomeScreen(),
    //ProfilePage(), // Add the new Profile page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, size: 30),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud, size: 30), // Icon for Profile
              label: 'Weather',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.transparent,
          elevation: 0,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          unselectedLabelStyle: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
