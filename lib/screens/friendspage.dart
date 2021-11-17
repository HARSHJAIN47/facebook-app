// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:facebook/models/friendes_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Friends",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Container(
                        child: IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {},
                          icon: Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey[300], shape: BoxShape.circle),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {},
                          icon: Icon(
                            Icons.people,
                            color: Colors.redAccent,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey[300], shape: BoxShape.circle),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black38,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: friendsData.length,
                itemBuilder: (context, i) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        backgroundImage: AssetImage(friendsData[i].avatar),
                      ),
                      title: Text(
                        friendsData[i].name,
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: Wrap(
                        spacing: 12,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text("Add Friend"),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              primary: Colors.white,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              textStyle: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Remove"),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey[400],
                              primary: Colors.black,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              textStyle: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
