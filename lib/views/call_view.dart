import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_clone/components/call_tile.dart';

class CallView extends StatelessWidget {
  CallView({Key? key}) : super(key: key);

  List<String> imgFromOnline = [
    "https://randomuser.me/api/portraits/men/83.jpg",
    "https://randomuser.me/api/portraits/women/88.jpg",
    "https://randomuser.me/api/portraits/men/34.jpg",
    "https://randomuser.me/api/portraits/men/39.jpg",
    "https://randomuser.me/api/portraits/women/85.jpg",
    "https://randomuser.me/api/portraits/women/36.jpg",
    "https://randomuser.me/api/portraits/women/12.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: ListView(children: [
                CallTile(imgFromOnline[0], "userName", true, "date", "time"),
                CallTile(imgFromOnline[0], "userName", false, "date", "time"),
              ]),
            ),
          ),
        )
      ],
    );
  }
}
