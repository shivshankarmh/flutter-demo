import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Usr {
  final String name;
  final String email;
  final String username;
  Usr({this.name, this.email, this.username});
}

//Creating a class user to store the data;
class User {
  final int id;
  final int userId;
  final String title;
  final String body;

  User({
    this.id,
    this.userId,
    this.title,
    this.body,
  });
}

class HttpHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HttpHomePage> {
//Applying get request.

  Future<List<Usr>> getRequest() async {
    //replace your restFull API here.
    String url = "https://jsonplaceholder.typicode.com/user";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    //Creating a list to store input data;
    List<Usr> users = [];
    for (var singleUser in responseData) {
      Usr user = Usr(
          //id: singleUser["id"],
          //userId: singleUser["userId"],
          //title: singleUser["title"],
          //body: singleUser["body"]
          name: singleUser["name"],
          email: singleUser["email"],
          username: singleUser["username"]);

      //Adding user to the list.
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Http Get Request."),
          leading: Icon(
            Icons.get_app,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: FutureBuilder(
            future: getRequest(),
            builder: (BuildContext ctx, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (ctx, index) => ListTile(
                    title: Text(snapshot.data[index].name),
                    subtitle: Text(snapshot.data[index].email),
                    contentPadding: EdgeInsets.only(bottom: 20.0),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
