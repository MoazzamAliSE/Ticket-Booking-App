import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Text("Home"),
    const Text("Search"),
    const Text("T"),
    const Text("Pro"),
  ];

  void _onItemtapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // print("${_selectedIndex}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ticket App")),
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemtapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // selectedItemColor: Color.fromARGB(255, 56, 81, 122),
        selectedItemColor: Color.fromARGB(255, 14, 50, 214),
        unselectedItemColor: const Color(0xFF526480),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.home),
              activeIcon: Icon(FluentIcons.home_solid),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.search),
              activeIcon: Icon(FluentIcons.search_and_apps),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.ticket),
              activeIcon: Icon(FluentIcons.air_tickets),
              label: "Ticket"),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.people),
              activeIcon: Icon(FluentIcons.personalize),
              label: "Profile"),
        ],
      ),
    );
  }
}
