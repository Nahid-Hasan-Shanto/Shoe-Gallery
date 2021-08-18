import 'package:b_grade/screens/details.dart';
import 'package:b_grade/screens/products_item.dart';
import 'package:b_grade/widget/Categories_item.dart';
import 'package:b_grade/widget/my_bag.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'B trade',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.green.shade50,
      ),
      home: MyHomePage(),
      routes: {
        //'/': (context) => MyHomePage(),

        MyBag.ROUTE_NAME: (context) => MyBag(),
        Details.ROUTE_NAME: (context) => Details(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade200,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Shoe Gallery',
          style: TextStyle(
            fontSize: 18,
            color: Colors.blueGrey.shade900,
            fontFamily: 'area',
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.queue,
              color: Colors.blueGrey.shade900,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.blueGrey.shade900,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Categories(tabController: _tabController),
          ProductsItem(),
          //MyBag(),
        ],
      ),
    );
  }
}
