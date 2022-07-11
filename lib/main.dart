import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/chats_tile.dart';
import 'package:whatsapp_clone/views/call_view.dart';
import 'package:whatsapp_clone/views/camera_view.dart';
import 'package:whatsapp_clone/views/chats_view.dart';
import 'package:whatsapp_clone/views/status_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WhatsApp_Clone(),
    );
  }
}

class WhatsApp_Clone extends StatefulWidget {
  WhatsApp_Clone({Key? key}) : super(key: key);

  @override
  State<WhatsApp_Clone> createState() => _WhatsApp_CloneState();
}

class _WhatsApp_CloneState extends State<WhatsApp_Clone> {
  @override
  Color mainColor = Color.fromARGB(255, 35, 109, 38);

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp_Clone"),
            backgroundColor: mainColor,
            elevation: 0.0,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
            flexibleSpace: Container(),
            bottom:
                TabBar(indicatorColor: Colors.white, indicatorWeight: 1, tabs: [
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 50),
                child: Container(
                  width: 15,
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.photo_camera),
                    iconSize: 16.0,
                  ),
                ),
              ),
              Text("CHATS"),
              Text("STATUS"),
              Text("CALLS"),
            ]),
            titleSpacing: 20,
          ),
          body: TabBarView(
            children: [CameraView(), chat_view(), StatusView(), CallView()],
          )),
    );
  }
}
