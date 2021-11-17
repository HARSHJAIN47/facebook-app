// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class PostModel {
  late final VoidCallback avatarOnTap;
  late final VoidCallback moreOnTap;
  late final VoidCallback likeOnTap;
  late final VoidCallback commentOnTap;
  late final VoidCallback shareOnTap;
  late final String avatarImage;
  late final String name;
  late final String time;
  late final String postTitle;
  late final String postImage;
  late final int totalLikes;
  late final int totalComments;
  PostModel(
      {required this.avatarImage,
      required this.avatarOnTap,
      required this.commentOnTap,
      required this.likeOnTap,
      required this.moreOnTap,
      required this.name,
      required this.postImage,
      required this.postTitle,
      required this.shareOnTap,
      required this.time,
      required this.totalLikes,
      required this.totalComments});
}

List<PostModel> postData = [
  PostModel(
    avatarOnTap: () {
      print("avatar clicked");
    },
    commentOnTap: () {
      print("comment clicked");
    },
    moreOnTap: () {
      print("more clicked");
    },
    likeOnTap: () {
      print("like clicked");
    },
    shareOnTap: () {
      print("share clicked");
    },
    avatarImage: 'assets/images/dp1.jpg',
    name: 'User 1',
    postImage: 'assets/images/post1.jpg',
    postTitle: 'This is my new profile picture',
    time: 'Just now',
    totalComments: 47,
    totalLikes: 45,
  ),
  PostModel(
    avatarOnTap: () {
      print("avatar clicked");
    },
    commentOnTap: () {
      print("comment clicked");
    },
    moreOnTap: () {
      print("more clicked");
    },
    likeOnTap: () {
      print("like clicked");
    },
    shareOnTap: () {
      print("share clicked");
    },
    avatarImage: 'assets/images/dp2.jpg',
    name: 'User 2',
    postImage: 'assets/images/post2.jpg',
    postTitle: 'This is my new profile picture',
    time: 'Just now',
    totalComments: 40,
    totalLikes: 41,
  ),
  PostModel(
    avatarOnTap: () {
      print("avatar clicked");
    },
    commentOnTap: () {
      print("comment clicked");
    },
    moreOnTap: () {
      print("more clicked");
    },
    likeOnTap: () {
      print("like clicked");
    },
    shareOnTap: () {
      print("share clicked");
    },
    avatarImage: 'assets/images/dp3.jpg',
    name: 'User 3',
    postImage: 'assets/images/post3.jpg',
    postTitle: 'This is my new profile picture',
    time: 'Just now',
    totalComments: 51,
    totalLikes: 45,
  ),
  PostModel(
    avatarOnTap: () => print("avatar clicked"),
    commentOnTap: () {
      print("comment clicked");
    },
    moreOnTap: () {
      print("more clicked");
    },
    likeOnTap: () {
      print("like clicked");
    },
    shareOnTap: () {
      print("share clicked");
    },
    avatarImage: 'assets/images/dp4.jpg',
    name: 'User 4',
    postImage: 'assets/images/post4.jpg',
    postTitle: 'This is my new profile picture',
    time: 'Just now',
    totalComments: 587,
    totalLikes: 455,
  ),
  PostModel(
    avatarOnTap: () {
      print("avatar clicked");
    },
    commentOnTap: () {
      print("comment clicked");
    },
    moreOnTap: () {
      print("more clicked");
    },
    likeOnTap: () {
      print("like clicked");
    },
    shareOnTap: () {
      print("share clicked");
    },
    avatarImage: 'assets/images/dp5.jpg',
    name: 'User 5',
    postImage: 'assets/images/post5.jpg',
    postTitle: 'This is my new profile picture',
    time: 'Just now',
    totalComments: 65,
    totalLikes: 55,
  ),
  PostModel(
    avatarOnTap: () {
      print("avatar clicked");
    },
    commentOnTap: () {
      print("comment clicked");
    },
    moreOnTap: () {
      print("more clicked");
    },
    likeOnTap: () {
      print("like clicked");
    },
    shareOnTap: () {
      print("share clicked");
    },
    avatarImage: 'assets/images/dp6.jpg',
    name: 'User 6',
    postImage: 'assets/images/post6.jpg',
    postTitle: 'This is my new profile picture',
    time: 'Just now',
    totalComments: 689,
    totalLikes: 245,
  ),
  PostModel(
    avatarOnTap: () {
      print("avatar clicked");
    },
    commentOnTap: () {
      print("comment clicked");
    },
    moreOnTap: () {
      print("more clicked");
    },
    likeOnTap: () {
      print("like clicked");
    },
    shareOnTap: () {
      print("share clicked");
    },
    avatarImage: 'assets/images/dp7.jpg',
    name: 'User 7',
    postImage: 'assets/images/post7.jpg',
    postTitle: 'This is my new profile picture',
    time: 'Just now',
    totalComments: 795,
    totalLikes: 45,
  ),
  PostModel(
    avatarOnTap: () {
      print("avatar clicked");
    },
    commentOnTap: () {
      print("comment clicked");
    },
    moreOnTap: () {
      print("more clicked");
    },
    likeOnTap: () {
      print("like clicked");
    },
    shareOnTap: () {
      print("share clicked");
    },
    avatarImage: 'assets/images/dp8.jpg',
    name: 'User 8',
    postImage: 'assets/images/post8.jpg',
    postTitle: 'This is my new profile picture',
    time: 'Just now',
    totalComments: 96,
    totalLikes: 156,
  ),
];
