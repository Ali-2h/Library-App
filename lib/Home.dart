import 'dart:io';
import 'package:flutter/material.dart';
import 'package:libraryapp/Api.dart';

class Home extends StatelessWidget {
  TextStyle style = TextStyle(fontFamily: 'elham', fontSize: 35);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "کتاب ها",
          style: style,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: API(),
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
                "درباره ما",
                textAlign: TextAlign.right,
                style: style,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/about');
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
    );
  }
}
