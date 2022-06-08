import 'package:activity/features/colors.dart';
import 'package:activity/screens/home/tabs_home.dart';
import 'package:flutter/material.dart';

class MenuTabs extends StatefulWidget {
  const MenuTabs({Key? key}) : super(key: key);

  @override
  State<MenuTabs> createState() => _MenuTabsState();
}

class _MenuTabsState extends State<MenuTabs> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    TabsHome(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
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
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'My Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.reorder),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedItemColor: Colors.white,
        selectedItemColor: ActivityColor.blueCard,
        showUnselectedLabels: true,
        backgroundColor: ActivityColor.blueOld,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
