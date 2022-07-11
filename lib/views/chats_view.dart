import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/chats_tile.dart';

class chat_view extends StatelessWidget {
  const chat_view({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: Colors.white,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
            child: ListView(
              children: [
                chartTile(imgFromOnline[0], "userName", "msg", "date", true),
                chartTile(imgFromOnline[4], "userName", "msg", "date", true),
                chartTile(imgFromOnline[1], "userName", "msg", "date", false),
                chartTile(imgFromOnline[2], "userName", "msg", "date", true),
                chartTile(imgFromOnline[3], "userName", "msg", "date", false),
                chartTile(imgFromOnline[4], "userName", "msg", "date", false),
                chartTile(imgFromOnline[5], "userName", "msg", "date", false),
                chartTile(imgFromOnline[6], "userName", "msg", "date", false),
                chartTile(imgFromOnline[4], "userName", "msg", "date", false),
                chartTile(imgFromOnline[3], "userName", "msg", "date", true),
                chartTile(imgFromOnline[5], "userName", "msg", "date", false),
                chartTile(imgFromOnline[1], "userName", "msg", "date", true),
              ],
            ),
          ),
        )),
      ],
    );
  }
}
