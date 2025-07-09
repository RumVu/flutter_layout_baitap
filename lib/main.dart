import 'package:flutter/material.dart';
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
        body: SafeArea(child: Pagetong()),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
