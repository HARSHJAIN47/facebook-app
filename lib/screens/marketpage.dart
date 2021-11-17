// ignore_for_file: prefer_const_constructors

import 'package:facebook/models/market_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  _MarketPageState createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
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
                    "Market Place",
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
                            Icons.search,
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
              child: GridView.count(
                padding: EdgeInsetsDirectional.all(20),
                primary: false,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 2 / 3,
                children: [
                  for (var i = 0; i < marketData.length; i++) ...[
                    InkWell(
                      onTap: () {},
                      child: Card(
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.asset(marketData[i].photo),
                            ),
                            Text(
                              marketData[i].title,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              marketData[i].price.toString(),
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
