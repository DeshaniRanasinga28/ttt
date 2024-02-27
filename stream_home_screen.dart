import 'dart:developer';

import 'package:flutter/material.dart';

class Stream_HomeScreen extends StatefulWidget {
  const Stream_HomeScreen({super.key});

  @override
  State<Stream_HomeScreen> createState() => _Stream_HomeScreenState();
}

class _Stream_HomeScreenState extends State<Stream_HomeScreen> {
  @override
  void initState() {
    super.initState();
    // getName();
    getData();
  }

  getData() async {
    await for (String name in getName()) {
      log(name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Text("Stream")],
      ),
    );
  }

  Stream<String> getName() async* {
    await Future.delayed(const Duration(seconds: 1));
    yield 'Mark';
    await Future.delayed(const Duration(seconds: 1));
    yield 'John';
    await Future.delayed(const Duration(seconds: 1));
    yield 'Smith';
  }

  // Stream<String> getName() {
  //   return Stream.fromIterable(['Mark', 'John', 'Smith']);
  // }
}
