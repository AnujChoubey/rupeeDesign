import 'package:flutter/material.dart';
import 'package:flutter_first_app/widgets/item_list.dart';

class OrderBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey.shade50,
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ButtonBar(
                    buttonHeight: 30,
                    // buttonTextTheme: ,
                    buttonMinWidth: 60,
                    buttonPadding: EdgeInsets.all(10),
                    mainAxisSize: MainAxisSize.min,
                    // layoutBehavior: ButtonBarLayoutBehavior.padded,
                    alignment: MainAxisAlignment.start,
                    children: <Widget>[
                      RaisedButton(
                        elevation: 1,
                        child: Text(
                          'All',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        color: Colors.grey.shade800,
                        highlightColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular((10))),
                        onPressed: () {},
                      ),
                      RaisedButton(
                        child: Text(
                          'Open',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular((10))),
                        onPressed: () {
                          // To do
                        },
                        elevation: 1,
                      ),
                      RaisedButton(
                        child: Text(
                          'Complete',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () {
                          // To do
                        },
                        elevation: 1,
                      ),
                      RaisedButton(
                        child: Text(
                          'TRG Pending',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular((10))),
                        onPressed: () {
                          // To do
                        },
                        elevation: 1,
                      ),
                      RaisedButton(
                        elevation: 1,
                        child: Text(
                          'Extra',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular((10))),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'All',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                icon: Icon(Icons.account_tree_outlined, size: 25),
                onPressed: () {},
              ),
            ),
            Column(
              children: <Widget>[
                ItemList(),
                ItemList(),
                ItemList(),
                ItemList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
