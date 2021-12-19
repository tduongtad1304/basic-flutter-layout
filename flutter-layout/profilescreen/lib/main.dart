// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:profilescreen/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Profile Screen Layout',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Your profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey.shade500,
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 25,
          ),
        ),
      ),
      body: ProFileUI(),
    );
  }
}
