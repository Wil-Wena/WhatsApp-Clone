// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/chats_tile.dart';

Widget CallTile(String imgFromOnline, String userName, bool callType,
    String date, String time) {
  return Row(
    children: [
      CircleAvatar(
        backgroundImage: NetworkImage(imgFromOnline),
        radius: 25,
      ),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      if (callType)
                        // ignore: prefer_const_constructors
                        Icon(
                          Icons.call_missed_sharp,
                          color: Colors.red,
                        ),
                      if (!callType)
                        Icon(
                          Icons.call_made,
                          color: Colors.green,
                        ),
                      Text(date, style: TextStyle(color: Colors.grey)),
                      Text(",", style: TextStyle(color: Colors.grey)),
                      Text(time, style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ],
              ),
            ),
            Icon(
              Icons.call,
              color: Colors.green,
            ),
          ],
        ),
      ),
    ],
  );
}
