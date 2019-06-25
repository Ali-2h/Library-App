import 'dart:io';

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle style2 = TextStyle(fontFamily: 'elham', fontSize: 25);
    TextStyle style = TextStyle(fontFamily: 'elham', fontSize: 35);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "درباره ما",
          style: style,
        ),
        centerTitle: true,
      ),
      drawer: new Drawer(
        elevation: 2,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                    child: Image.asset(
                      "assets/book.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "کتاب خونه",
                    style: style,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_box,
                size: 30,
              ),
              title: Text(
                "صفحه نخست",
                textAlign: TextAlign.right,
                style: style,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            Divider(
              height: 5,
            ),
            ListTile(
              leading: Icon(
                Icons.close,
                size: 30,
              ),
              title: Text(
                "خروج",
                textAlign: TextAlign.right,
                style: style,
              ),
              onTap: () => exit(0),
            ),
          ],
        ),
      ),
      body: Center(
          child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 160,
                child: Image.asset(
                  "assets/137.jpeg",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "طراح : علی دره ئی تفتی",
                style: style2,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "شماره دانشجویی : 96210033206026",
                style: style2,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "نام استاد : استاد جناب آقای سعيد ولي پور عالم",
                style: style2,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "دانشکده شهید شمسی پور",
                style: style2,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
