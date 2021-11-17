// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:facebook/screens/messagepage.dart';
import 'package:facebook/widgets/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 120,
            child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  Container(
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/user5.jpg",
                    ),
                  ),
                  title: Text(
                    "Harsh Jain",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "View your profile",
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.profileRoute);
                  },
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black12,
                ),
                ListTile(
                  leading: Icon(
                    Icons.coronavirus,
                    color: Colors.redAccent,
                  ),
                  title: Text(
                    "Covid-19 Information Center",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                  title: Text(
                    "Messages",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.messageRoute);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.group,
                    color: Colors.yellow,
                  ),
                  title: Text(
                    "Group",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.shopping_bag,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    "MarketPlace",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.marketRoute);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.people,
                    color: Colors.green,
                  ),
                  title: Text(
                    "Friends",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.friendsRoute);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.video_label,
                    color: Colors.purpleAccent,
                  ),
                  title: Text(
                    "Videos",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.videosRoute);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.pages,
                    color: Colors.redAccent,
                  ),
                  title: Text(
                    "Pages",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "settings",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.privacy_tip,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.help,
                    color: Colors.cyan,
                  ),
                  title: Text(
                    "Help",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.book,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "About",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.redAccent,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
