// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final data;
  const DetailsPage({super.key, this.data});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Amine Store", style: TextStyle(fontWeight: FontWeight.bold)),
            Icon(Icons.gamepad, color: Colors.black),
          ],
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey[200],
        elevation: 4,
      ),
      body: ListView(
        children: [
          Container(height: 400, child: Image.asset(widget.data['image'])),
          Container(
              child: Text(
            widget.data['title'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
          SizedBox(
            height: 5,
          ),
          Container(
              child: Text(
            widget.data['brand'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          )),
          SizedBox(
            height: 15,
          ),
          Container(
              child: Text(widget.data['price'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[900]))),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Colors:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child:
                          Container(color: Colors.black, height: 30, width: 30),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Black",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child:
                          Container(color: Colors.brown, height: 30, width: 30),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Brown",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 5,
            ),
            padding: EdgeInsets.only(left: 60, right: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Sizes:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text('38',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text('39',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text('40',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text('41',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text('42',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
            child: Container(
              color: Colors.black,
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Add to Cart",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
