// ignore_for_file: prefer_const_constructors

import 'package:facebook/models/notifications_model.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
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
                    "Notifications",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {},
                          tooltip: "Mark all notifications as read",
                          icon: Icon(
                            Icons.check_circle,
                            color: Colors.black,
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
                itemCount: notificationData.length,
                itemBuilder: (context, i) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        backgroundImage: AssetImage(notificationData[i].avatar),
                      ),
                      title: Text(
                        notificationData[i].name +
                            " " +
                            notificationData[i].description,
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(notificationData[i].time),
                      onTap: () {},
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_vert),
                      ),
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
