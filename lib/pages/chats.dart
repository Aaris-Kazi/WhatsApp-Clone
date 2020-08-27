import 'package:flutter/material.dart';
import 'package:signin/models/chat_models.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummydata.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Colors.green,
              backgroundImage: new AssetImage(dummydata[i].avatar),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  dummydata[i].name,
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                
                new Text(dummydata[i].time,
                    style: new TextStyle(color: Colors.grey))
              ],
            ),
            subtitle: new Container(
              padding: EdgeInsets.only(top: 5.0),
              child: new Text(dummydata[i].message),
            ),
          )
        ],
      ),
    );
  }
}
