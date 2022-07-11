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
          child: Stack(
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  child: ListView(children: [
                    CallTile(
                        imgFromOnline[0], "userName", true, "date", "time"),
                    CallTile(
                        imgFromOnline[6], "userName", false, "date", "time"),
                    CallTile(
                        imgFromOnline[5], "userName", true, "date", "time"),
                    CallTile(
                        imgFromOnline[1], "userName", true, "date", "time"),
                    CallTile(
                        imgFromOnline[3], "userName", true, "date", "time"),
                    CallTile(
                        imgFromOnline[2], "userName", false, "date", "time"),
                    CallTile(
                        imgFromOnline[1], "userName", false, "date", "time"),
                    CallTile(
                        imgFromOnline[5], "userName", true, "date", "time"),
                    CallTile(
                        imgFromOnline[6], "userName", false, "date", "time"),
                    CallTile(
                        imgFromOnline[0], "userName", true, "date", "time"),
                    CallTile(
                        imgFromOnline[5], "userName", false, "date", "time"),
                    CallTile(
                        imgFromOnline[4], "userName", false, "date", "time"),
                    CallTile(
                        imgFromOnline[2], "userName", true, "date", "time"),
                    CallTile(
                        imgFromOnline[3], "userName", true, "date", "time"),
                    CallTile(
                        imgFromOnline[6], "userName", false, "date", "time"),
                  ]),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.green,
                          child: Icon(Icons.phone),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
