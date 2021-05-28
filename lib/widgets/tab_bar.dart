import 'package:flutter/material.dart';
import 'package:flutter_first_app/orderbook.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(

                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.black,
                isScrollable: true,
                indicatorWeight: 3,
                labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                tabs: [
                  Tab(child: Text('Orderbook')),
                  Tab(child: Text('Tradebook')),
                  Tab(child: Text('Net Position')),
                  Tab(child: Text('MFT')),
                  Tab(child: Text('Extra')),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            OrderBook(),
            Center(child: Text('Coming Soon')),
            Center(child: Text('Coming Soon')),
            Center(child: Text('Coming Soon')),
            Center(child: Text('Coming Soon')),
          ],
        ),
      ),
    );
  }
}
