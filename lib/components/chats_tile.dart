import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> imgFromOnline = [
  "https://randomuser.me/api/portraits/men/83.jpg",
  "https://randomuser.me/api/portraits/women/88.jpg",
  "https://randomuser.me/api/portraits/men/34.jpg",
  "https://randomuser.me/api/portraits/men/39.jpg",
  "https://randomuser.me/api/portraits/women/85.jpg",
  "https://randomuser.me/api/portraits/women/36.jpg",
  "https://randomuser.me/api/portraits/women/12.jpg"
];
Widget chartTile(
    String imgFromOnline, String userName, String msg, String date, bool seen) {
  return Row(
    children: [
      CircleAvatar(
        backgroundImage: NetworkImage(imgFromOnline),
        radius: 25,
      ),
      Expanded(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  userName,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Text(date)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(msg)),
                if (seen)
                  Icon(
                    Icons.check_circle,
                    size: 15,
                    color: Colors.green,
                  ),
                if (!seen)
                  Icon(
                    Icons.check_circle_outline,
                    size: 15,
                    color: Colors.green,
                  ),
              ],
            )
          ],
        ),
      ))
    ],
  );
}
