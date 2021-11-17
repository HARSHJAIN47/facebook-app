// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MessageModel {
  late String name;
  late String avatar;
  late String time;
  late Icon status;
  MessageModel({
    required this.name,
    required this.avatar,
    required this.time,
    required this.status,
  });
  static Icon statusOnline = Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.green,
  );
  static Icon statusOffline = Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.black38,
  );
}

List<MessageModel> messageData = [
  MessageModel(
    name: "User 1",
    avatar: "assets/images/dp1.jpg",
    status: MessageModel.statusOnline,
    time: "Just now",
  ),
  MessageModel(
    name: "User 2",
    avatar: "assets/images/dp2.jpg",
    status: MessageModel.statusOffline,
    time: "6 minutes ago",
  ),
  MessageModel(
    name: "User 3",
    avatar: "assets/images/dp3.jpg",
    status: MessageModel.statusOnline,
    time: "10 minutes ago",
  ),
  MessageModel(
    name: "User 4",
    avatar: "assets/images/dp4.jpg",
    status: MessageModel.statusOffline,
    time: "15 minutes ago",
  ),
  MessageModel(
    name: "User 5",
    avatar: "assets/images/dp5.jpg",
    status: MessageModel.statusOnline,
    time: "05:00",
  ),
  MessageModel(
    name: "User 6",
    avatar: "assets/images/dp6.jpg",
    status: MessageModel.statusOffline,
    time: "04:30",
  ),
  MessageModel(
    name: "User 7",
    avatar: "assets/images/dp7.jpg",
    status: MessageModel.statusOnline,
    time: "yesterday",
  ),
  MessageModel(
    name: "User 8",
    avatar: "assets/images/dp8.jpg",
    status: MessageModel.statusOffline,
    time: "yesterday",
  ),
];
