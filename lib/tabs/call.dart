import 'package:flutter/material.dart';
import 'package:whatsapp/models/callModel.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.link,
                      color: Colors.white,
                    ),
                  ),
                ),
                title: Text(
                  'Create call link',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Share a link for your WhatsApp call'),
              ),
            )
          ],
        ),
        SizedBox(
          height: 30.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            width: double.infinity,
            color: Colors.grey.shade200,
            child: Text(
              'Recent',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey.shade500),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: callData.length,
              itemBuilder: (context, i) => Column(
                    children: <Widget>[
                      Divider(height: 0.1),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage(callData[i].pic),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              callData[i].name,
                              style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.call,
                              color: Colors.green,
                            )
                          ],
                        ),
                        subtitle: Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_outward,
                                color: Colors.green,
                              ),
                              Text(
                                callData[i].time,
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
        )
      ],
    );
  }
}
