// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:facebook/screens/friendspage.dart';
import 'package:facebook/screens/homepage.dart';
import 'package:facebook/screens/marketpage.dart';
import 'package:facebook/screens/messagepage.dart';
import 'package:facebook/screens/notificationspage.dart';
import 'package:facebook/screens/videospage.dart';
import 'package:facebook/widgets/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> toptabs = <Tab>[
    Tab(
      icon: Icon(Icons.home_outlined),
    ),
    Tab(
      icon: Badge(
          position: BadgePosition.topEnd(top: -20, end: -5),
          badgeContent: Text(
            '747',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          child: Icon(Icons.people_alt_outlined)),
    ),
    Tab(
      icon: Badge(
          position: BadgePosition.topEnd(top: -20, end: -5),
          badgeContent: Text(
            '47',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          child: Icon(Icons.message_outlined)),
    ),
    Tab(
      icon: Badge(
        position: BadgePosition.topEnd(top: -20, end: -5),
        badgeContent: Text(
          '3',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        child: Icon(Icons.notifications_outlined),
      ),
    ),
    Tab(
      icon: Icon(Icons.video_library_outlined),
    ),
    Tab(
      icon: Icon(Icons.shopping_bag_outlined),
    ),
  ];
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: toptabs.length, vsync: this, initialIndex: 0);
  }

  Future<bool> _onWillPop() async {
    if (_tabController?.index == 0) {
      await SystemNavigator.pop();
    }
    Future.delayed(const Duration(microseconds: 200), () {
      _tabController?.index = 0;
    });
    return _tabController?.index == 0;
  }

  final _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldkey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
              fontFamily: 'Klavika',
              fontSize: 34,
              color: Colors.blue[700],
            ),
          ),
          actions: [
            Container(
              child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[300], shape: BoxShape.circle),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  _scaffoldkey.currentState!.openEndDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[300], shape: BoxShape.circle),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: toptabs,
            indicatorColor: Colors.black,
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width,
          child: MyDrawer(),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            HomePage(),
            FriendsPage(),
            MessagePage(),
            NotificationsPage(),
            VideosPage(),
            MarketPage()
          ],
        ),
      ),
    );
  }
}
