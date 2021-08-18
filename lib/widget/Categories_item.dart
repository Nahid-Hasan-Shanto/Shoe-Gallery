import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.grey.shade200,
      child: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, right: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search your shoes',
                icon: Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: SizedBox(height: 5.0),
          ),
          Text(
            'Categories',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: SizedBox(height: 0.0),
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Text(
                  'Nike',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Adidas',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Puma',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'area',
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Bata',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'area',
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Apex',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'area',
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Hush',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'area',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
