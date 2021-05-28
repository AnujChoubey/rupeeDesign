import 'package:flutter/material.dart';
import '../placeholder_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'tab_bar.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = <Widget>[
    MyHomePage(),
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.white),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Orders',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        leading: IconButton(disabledColor: Colors.grey,visualDensity: VisualDensity.compact,
          icon: Icon(Icons.keyboard_backspace_rounded,color: Colors.grey.shade50),
          onPressed: () {},
        ),
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orangeAccent,
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        elevation: 15,
        // new
        currentIndex: _currentIndex,
        // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            title: Text('Portfolio'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye_outlined),
            title: Text('WatchList'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Tools'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            title: Text('Search'),
          ),
        ],
        iconSize: 30,
      ),
    );
  }
}
