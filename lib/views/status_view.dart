import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatusView extends StatefulWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  State<StatusView> createState() => _StatusView();
}

class _StatusView extends State<StatusView> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Center(child: Text("Status under construction")),
    ));
  }
}
