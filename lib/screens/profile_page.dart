// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:facebook/widgets/menubar.dart';
import 'package:facebook/widgets/post.dart';
import 'package:facebook/widgets/postbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FaceBook",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              Text(
                "Harsh Jain",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 255,
              width: 400,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 400,
                          margin: EdgeInsetsDirectional.only(top: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image.asset(
                              "assets/images/cover.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: MediaQuery.of(context).size.width / 2.9,
                    child: Container(
                      height: 120,
                      width: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        child: Image.asset(
                          "assets/images/user5.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Harsh Jain",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.add_circle),
                        Text("Add to story"),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[400],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.school_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Studied at JSPM Narhe Technical Campus",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "From Bikaner",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.home_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "lives in Pune",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Friends"),
                  TextButton(
                    onPressed: () {},
                    child: Text("Find Friends"),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black12,
            ),
            PostBar(),
            Divider(
              thickness: 1,
              color: Colors.black12,
            ),
            MenuBar(),
            Divider(
              thickness: 1,
              color: Colors.black12,
            ),
            Post(),
          ],
        ),
      ),
    );
  }
}
