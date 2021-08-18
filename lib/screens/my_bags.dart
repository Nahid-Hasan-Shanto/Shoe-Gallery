import 'package:flutter/material.dart';

import 'details.dart';

class MyBags extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String category;
  final double price;

  const MyBags({
    Key? key,
    required this.id,
    required this.title,
    required this.image,
    required this.category,
    required this.price,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Details.ROUTE_NAME);
      },
      child: Container(
        height: 80,
        // color: Colors.black,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  price.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.add),
                    SizedBox(width: 10),
                    Text(
                      '1',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.remove),
                    SizedBox(width: 10),
                    Text(
                      '|',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '43',
                      // style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.expand_more)
                  ],
                ),
              ],
            ),
            Image.network(
              image,
              height: 60,
              width: 70,
            )
          ],
        ),
      ),
    );
  }
}
