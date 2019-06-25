import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


class API extends StatefulWidget {
  @override
  _APIState createState() => _APIState();
}

class _APIState extends State<API> {
  var data;
  Future<List> GetData() async {
    http.Response response = await http.get(
      Uri.encodeFull('https://api.myjson.com/bins/ivhcp'),
      headers: {"Accept": "Application/json"},
    );
    this.setState(() {
      data = json.decode(response.body);
    });
    print(response.statusCode);
  }

  @override
  void initState() {
    this.GetData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(top: 5, left: 5, right: 5),
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Image.network(
                    data[index]["thumbnailUrl"],
                    fit: BoxFit.fill,
                  ),
                  title: Text(
                    data[index]["title"],
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "تعداد صفحات : "+data[index]["pageCount"].toString(),
                      ),
                      Text(
                        "نویسنده : "+ data[index]["authors"][0].toString()
                      ),
                      Text(
                        "شماره شابک : "+data[index]["isbn"].toString()
                      ),
                    ],
                  ),
                  onTap: () {
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
