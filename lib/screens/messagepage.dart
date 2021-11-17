// ignore_for_file: prefer_const_constructors

import 'package:facebook/models/message_model.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
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
                    "Messages",
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
                            Icons.message_outlined,
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
                            Icons.settings,
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
                itemCount: messageData.length,
                itemBuilder: (context, i) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        backgroundImage: AssetImage(messageData[i].avatar),
                      ),
                      title: Text(
                        messageData[i].name,
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(messageData[i].time),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: messageData[i].status,
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
