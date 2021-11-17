import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideosModel {
  late String name;
  late String avatarImage;
  late String time;
  late String videoPostTitle;
  late String? videoPostLink;
  late final int totalLikes;
  late final int totalComments;
  late final VoidCallback avatarOnTap;
  late final VoidCallback moreOnTap;
  late final VoidCallback likeOnTap;
  late final VoidCallback commentOnTap;
  late final VoidCallback shareOnTap;
  VideosModel({
    required this.name,
    required this.avatarImage,
    required this.time,
    required this.videoPostTitle,
    required this.videoPostLink,
    required this.totalLikes,
    required this.totalComments,
    required this.avatarOnTap,
    required this.moreOnTap,
    required this.likeOnTap,
    required this.commentOnTap,
    required this.shareOnTap,
  });
}

List<VideosModel> videoData = [
  VideosModel(
    name: "User 1",
    avatarImage: "assets/images/dp1.jpg",
    time: "Just now",
    videoPostTitle: "Title goes here...",
    totalComments: 47,
    totalLikes: 45,
    videoPostLink: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=yFibazGpBiI"),
    avatarOnTap: () {},
    moreOnTap: () {},
    likeOnTap: () {},
    commentOnTap: () {},
    shareOnTap: () {},
  ),
  VideosModel(
    name: "User 2",
    avatarImage: "assets/images/dp2.jpg",
    time: "10 minutes ago",
    videoPostTitle: "Title goes here...",
    totalComments: 50,
    totalLikes: 30,
    videoPostLink: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=jUfsdDJFYXI"),
    avatarOnTap: () {},
    moreOnTap: () {},
    likeOnTap: () {},
    commentOnTap: () {},
    shareOnTap: () {},
  ),
  VideosModel(
    name: "User 3",
    avatarImage: "assets/images/dp3.jpg",
    time: "30 minutes ago",
    videoPostTitle: "Title goes here...",
    totalComments: 95,
    totalLikes: 74,
    videoPostLink: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=at-T2PJQgOg"),
    avatarOnTap: () {},
    moreOnTap: () {},
    likeOnTap: () {},
    commentOnTap: () {},
    shareOnTap: () {},
  ),
];
