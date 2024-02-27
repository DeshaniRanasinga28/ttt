import 'dart:developer';

import 'package:flutter/material.dart';

class Async_HomeScreen extends StatefulWidget {
  const Async_HomeScreen({super.key});

  @override
  State<Async_HomeScreen> createState() => _Async_HomeScreenState();
}

class _Async_HomeScreenState extends State<Async_HomeScreen> {
  @override
  void initState() {
    super.initState();
    // checkData();
    // getUserName().then((value) => log(value));
    // log(getUserName().toString());
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("Data ${getUserName().toString()}")],
      ),
    );
  }

  // checkData() {
  //   log("First Operation");
  //   Future.delayed(
  //       const Duration(seconds: 1), () => log('Second Big Operation'));
  //   log("Third Operation");
  //   log("Last Operation");
  // }

  Future<String> getUserName() async {
    return Future.delayed(const Duration(seconds: 2), () => 'Mark');
  }

  // Future<String> getUserName() {
  //   return Future.value('Mark');
  // }

  void getData() async {
    try {
      String data = await getUserName();
      log(data);
    } catch (error) {
      log("Error: ${error.toString()}");
    }
  }

  void getData2() async {
    try {
      String data = await getUserName();
      log(data);
    } catch (error) {
      log("Error: ${error.toString()}");
    }
  }
}
