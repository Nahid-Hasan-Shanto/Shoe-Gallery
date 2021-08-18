import 'package:flutter/material.dart';

import '../screens/cart_item.dart';

class MyBag extends StatelessWidget {
  static String ROUTE_NAME = '/MyBag';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade200,
        actions: [
          IconButton(
            icon: Icon(
              Icons.queue,
              color: Colors.blueGrey.shade900,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.only(top: 10.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Bag',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blueGrey.shade900,
                fontWeight: FontWeight.bold,
                fontFamily: 'area',
              ),
            ),
            Text(
              'Check and pay your shoes',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontFamily: 'area',
              ),
            ),
            Expanded(
              child: CartItem(),
            ),
          ],
        ),
      ),
    );
  }
}
