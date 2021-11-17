// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:facebook/models/video_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart' as yt;

class VideosPage extends StatefulWidget {
  const VideosPage({Key? key}) : super(key: key);

  @override
  _VideosPageState createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  String isFollow = "Follow";
  bool isSwitched = false;
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
                    "Videos",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Tooltip(
                      message: "Play viddeo automatically",
                      child: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          }),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black38,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: videoData.length,
                itemBuilder: (context, i) => Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          iconSize: 50,
                          onPressed: () {
                            videoData[i].avatarOnTap;
                          },
                          icon: CircleAvatar(
                            radius: 80,
                            backgroundImage:
                                AssetImage(videoData[i].avatarImage),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    videoData[i].name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        isFollow = "Following";
                                      });
                                    },
                                    child: Text(
                                      isFollow,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Wrap(
                                spacing: 10,
                                children: [
                                  Text(
                                    videoData[i].time,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Icon(Icons.public)
                                ],
                              )
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            videoData[i].moreOnTap;
                          },
                          icon: Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          yt.YoutubePlayerControllerProvider(
                            controller: yt.YoutubePlayerController(
                              initialVideoId: videoData[i].videoPostLink ?? "",
                              params: yt.YoutubePlayerParams(
                                captionLanguage: "English",
                                autoPlay: false,
                                mute: false,
                                showFullscreenButton: false,
                                showControls: true,
                              ),
                            ),
                            child: yt.YoutubePlayerIFrame(
                              aspectRatio: 16 / 9,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.all(8),
                            child: Text(
                              videoData[i].videoPostTitle,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                iconSize: 25,
                                onPressed: () {
                                  videoData[i].likeOnTap;
                                },
                                icon: Image.asset("assets/images/like.png")),
                            Text(
                              videoData[i].totalLikes.toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              iconSize: 25,
                              onPressed: () {
                                videoData[i].commentOnTap;
                              },
                              icon: Image.asset(
                                "assets/images/comment.png",
                              ),
                            ),
                            Text(
                              videoData[i].totalComments.toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              iconSize: 25,
                              onPressed: () {
                                videoData[i].shareOnTap;
                              },
                              icon: Image.asset("assets/images/share.png"),
                            ),
                            Text(
                              "Share",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
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
