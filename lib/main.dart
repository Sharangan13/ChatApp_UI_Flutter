import 'package:flutter/material.dart';
import 'package:whatsapp/tabs/call.dart';
import 'package:whatsapp/tabs/chat.dart';
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
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0)
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
            tabs: <Widget>[
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
        body: new TabBarView(
            controller: _tabController,
            children: <Widget>[new Chat(), new Status(), new Calls()]),
        floatingActionButton: _tabController.index == 0
            ? FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                backgroundColor: Colors.teal,
              )
            : _tabController.index == 1
                ? FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.teal,
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
