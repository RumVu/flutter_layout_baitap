import 'package:flutter/material.dart';
import 'package:flutter_layout_baitap/page1/page1.dart';
import 'package:flutter_layout_baitap/page2/page2.dart';
import 'package:flutter_layout_baitap/page4/page4.dart';
import 'package:flutter_layout_baitap/page5/page5.dart';
import 'package:flutter_layout_baitap/pageTong/pagetong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(child: Page5()),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
