// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class StoryModel {
  late final VoidCallback onTap;
  late final String image;
  late final String userName;
  StoryModel(
      {required this.onTap, required this.image, required this.userName});
}

List<StoryModel> storyData = [
  StoryModel(
    userName: "User 1",
    onTap: () => print("User1 clicked"),
    image: "assets/images/user1.jpg",
  ),
  StoryModel(
    userName: "User 2",
    onTap: () => print("User2 clicked"),
    image: "assets/images/user2.jpg",
  ),
  StoryModel(
    userName: "User 3",
    onTap: () => print("User3 clicked"),
    image: "assets/images/user3.jpg",
  ),
  StoryModel(
    userName: "User 4",
    onTap: () => print("User4 clicked"),
    image: "assets/images/user4.jpg",
  ),
  StoryModel(
    userName: "User 5",
    onTap: () => print("User5 clicked"),
    image: "assets/images/user6.jpg",
  ),
  StoryModel(
    userName: "User 6",
    onTap: () => print("User6 clicked"),
    image: "assets/images/user7.jpg",
  ),
  StoryModel(
    userName: "User 7",
    onTap: () => print("User7 clicked"),
    image: "assets/images/user8.jpg",
  ),
];
