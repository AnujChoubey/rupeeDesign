import 'package:flutter/material.dart';
import 'widgets/home_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,
        accentColorBrightness: Brightness.light
      ),
    );
  }
}