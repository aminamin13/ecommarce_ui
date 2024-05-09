// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommarce_example/detailsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categories = [
    {'iconname': Icons.laptop, 'title': 'Laptop'},
    {'iconname': Icons.watch, 'title': 'Watch'},
    {'iconname': Icons.headphones, 'title': 'HeadPhone'},
    {'iconname': Icons.headphones, 'title': 'HeadPhone'},
    {'iconname': Icons.tv, 'title': 'TV'},
    {'iconname': Icons.tv, 'title': 'TV'},
  ];
  List items = [
    {
      'image': 'assets/images/13.webp',
      'title': 'Iphone 13',
      'brand': 'Apple',
      'price': '\$1340'
    },
    {
      'image': 'assets/images/14.jpg',
      'title': 'Iphone 14',
      'brand': 'Apple',
      'price': '\$130'
    },
    {
      'image': 'assets/images/15.webp',
      'title': 'Iphone 15',
      'brand': 'Apple',
      'price': '\$10200'
    },
    {
      'image': 'assets/images/headphones.jpg',
      'title': 'Iphone 11',
      'brand': 'Apple',
      'price': '\$1420'
    },
    {
      'image': 'assets/images/headphones.jpg',
      'title': 'Iphone 12',
      'brand': 'Apple',
      'price': '\$10230'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Search'),
                BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
              ],
            ),
            body: SafeArea(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: ListView(children: [
                      Row(children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search",
                                hintStyle: TextStyle(color: Colors.grey),
                                fillColor: Colors.grey[100],
                                filled: true,
                                prefixIcon: Icon(Icons.search),
                                prefixIconColor: Colors.grey),
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(Icons.menu),
                      ]),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Text('Categories',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 130,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    alignment: Alignment.center,
                                    decoration: ShapeDecoration(
                                        shape: CircleBorder(),
                                        color: Colors.grey[400]),
                                    child: Icon(
                                      categories[index]['iconname'],
                                      size: 40,
                                    ),
                                  ),
                                  Text(categories[index]['title'],
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Text('Best Selling',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 0.63,
                        ),
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                    data: items[index],
                                  ),
                                ),
                              );
                            },
                            child: Card(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      items[index]['image'],
                                    ),
                                  ),
                                  Text(
                                    items[index]['title'],
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    items[index]['brand'],
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(items[index]['price'],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange[900]))
                                ],
                              ),
                            ),
                          );
                        },
                      )
                    ])))));
  }
}
