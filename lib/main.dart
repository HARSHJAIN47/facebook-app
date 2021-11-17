// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:facebook/screens/friendspage.dart';
import 'package:facebook/screens/marketpage.dart';
import 'package:facebook/screens/messagepage.dart';
import 'package:facebook/screens/notificationspage.dart';
import 'package:facebook/screens/profile_page.dart';
import 'package:facebook/screens/videospage.dart';
import 'package:facebook/widgets/maintab.dart';
import 'package:facebook/widgets/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "facebook",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MainTab(),
      routes: {
        MyRoutes.friendsRoute: (context) => FriendsPage(),
        MyRoutes.messageRoute: (context) => MessagePage(),
        MyRoutes.notificationRoute: (context) => NotificationsPage(),
        MyRoutes.videosRoute: (context) => VideosPage(),
        MyRoutes.marketRoute: (context) => MarketPage(),
        MyRoutes.profileRoute: (context) => ProfilePage(),
      },
    );
  }
}
