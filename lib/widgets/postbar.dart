// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class PostBar extends StatelessWidget {
  const PostBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          iconSize: 50,
          onPressed: () {},
          icon: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/user5.jpg'),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "What's on your mind?",
            style: TextStyle(fontSize: 18, color: Colors.grey[600]),
          ),
        ),
        Container(
          height: 60,
          child: const VerticalDivider(
            color: Colors.black26,
          ),
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.photo_album_outlined),
            ),
            const Text(
              "Photo",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
