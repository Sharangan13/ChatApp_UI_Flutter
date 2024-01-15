import 'package:flutter/material.dart';
import 'package:whatsapp/models/chatModel.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, i) => Column(
              children: <Widget>[
                Divider(
                  height: 0.2,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(chatData[i].pic),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        chatData[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        chatData[i].time,
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                  subtitle: Row(
                    children: <Widget>[Text(chatData[i].msg)],
                  ),
                )
              ],
            ));
  }
}
