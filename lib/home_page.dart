import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backGroundColor = Colors.white;
  Color _textBackGroundColor = Colors.black;
  double _textSize = 12;
  final Random _random = Random();

  void changeState() {
    setState(() {
      _backGroundColor = Color.fromARGB(
        255,
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
      _textBackGroundColor = Color.fromARGB(
        _random.nextInt(256),
        255,
        _random.nextInt(256),
        255,
      );
      _textSize = 12 + _random.nextDouble() * 36;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Assignment Three Stateful Widget Demo",
              style: TextStyle(
                fontSize: _textSize,
                color: _textBackGroundColor,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeState,
        child: Icon(Icons.add),
      ),
    );
  }
}
