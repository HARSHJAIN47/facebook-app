// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:facebook/models/post_model.dart';

import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          for (var i = 0; i < postData.length; i++) ...[
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                IconButton(
                  iconSize: 50,
                  onPressed: () {
                    postData[i].avatarOnTap;
                  },
                  icon: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage(postData[i].avatarImage),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        postData[i].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Wrap(
                        spacing: 10,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            postData[i].time,
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey[600]),
                          ),
                          Icon(Icons.public)
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  splashColor: Colors.transparent,
                  iconSize: 30,
                  onPressed: () {
                    postData[i].moreOnTap;
                  },
                  icon: Icon(Icons.more_horiz),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      postData[i].postTitle,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  Image.asset(postData[i].postImage),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  children: [
                    IconButton(
                        iconSize: 25,
                        onPressed: () {
                          postData[i].likeOnTap;
                        },
                        icon: Image.asset("assets/images/like.png")),
                    Text(
                      postData[i].totalLikes.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      iconSize: 25,
                      onPressed: () {
                        postData[i].commentOnTap;
                      },
                      icon: Image.asset(
                        "assets/images/comment.png",
                      ),
                    ),
                    Text(
                      postData[i].totalComments.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      iconSize: 25,
                      onPressed: () {
                        postData[i].shareOnTap;
                      },
                      icon: Image.asset("assets/images/share.png"),
                    ),
                    Text(
                      "Share",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
