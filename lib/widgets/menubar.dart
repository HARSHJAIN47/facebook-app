// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                Icons.post_add_outlined,
              ),
              Text(
                "Text",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 40,
          child: const VerticalDivider(
            color: Colors.black26,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                Icons.video_call,
                color: Colors.red,
              ),
              Text(
                "Live Video",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 40,
          child: const VerticalDivider(
            color: Colors.black26,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.red,
              ),
              Text(
                "Location",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
