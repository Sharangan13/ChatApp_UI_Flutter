import 'package:flutter/material.dart';
import 'package:whatsapp/tabs/call.dart';
import 'package:whatsapp/tabs/chat.dart';
import 'package:whatsapp/tabs/community.dart';
import 'package:whatsapp/tabs/status.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.green,
      ),
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Whatsapp"),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: const <Widget>[
              Tab(
                icon: Icon(Icons.groups_3_outlined),
              ),
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Updates",
              ),
              Tab(
                text: "Calls",
              )
            ],
          ),
        ),
        body: TabBarView(
            controller: _tabController,
            children: <Widget>[Community(), Chat(), Status(), Calls()]),
        floatingActionButton: _tabController.index == 0
            ? null
            : _tabController.index == 1
                ? FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.chat,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.teal,
                  )
                : _tabController.index == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 47,
                            width: 47,
                            child: FloatingActionButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.edit,
                                color: Colors.teal,
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.teal,
                          ),
                        ],
                      )
                    : FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.teal,
                      ));
  }
}
