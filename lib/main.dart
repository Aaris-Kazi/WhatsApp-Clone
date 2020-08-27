import 'package:flutter/material.dart';
import 'package:signin/pages/call.dart';
import 'package:signin/pages/cam_screen.dart';
import 'package:signin/pages/chats.dart';
import 'package:signin/pages/status.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
          primaryColor: Color(0xff075E54),
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: FrontPage(),
    );
  }
}

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: new AppBar(
          title: new Text('Whatsapp'),
          elevation: 0.7,
          bottom: new TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                new Tab(icon: new Icon(Icons.photo_camera)),
                new Tab(text: 'CHAT'),
                new Tab(text: 'STATUS'),
                new Tab(text: 'CALLS'),
              ]),
              actions: <Widget>[
                new Icon(Icons.search),
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
                new Icon(Icons.more_vert)
              ],
        ),
        body: new TabBarView(controller: _tabController, children: <Widget>[
          new Camscreen(),
          new Chats(),
          new Status(),
          new Calls(),
        ]),
        floatingActionButton: new FloatingActionButton(
            backgroundColor: Theme.of(context).accentColor,
            child: new Icon(Icons.message),
            onPressed: () => print('Open Chat')),
      ),
    );
  }
}
