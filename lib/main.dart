import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:read_write_local_storage/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.systemBlue,
      ),
      home: MyHomePage(),
    );
  }
}
