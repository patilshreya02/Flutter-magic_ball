import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Ask me anything",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Colors.blue,
      body: magic_ball(),
    ),
  ));
}

class magic_ball extends StatefulWidget {
  const magic_ball({super.key});

  @override
  State<magic_ball> createState() => _magic_ballState();
}

class _magic_ballState extends State<magic_ball> {
  int ballnum= 1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child:TextButton(
        onPressed: () {
          setState(() {
            ballnum=Random().nextInt(5)+1;
            print(ballnum);
          });

        },
        child: Image.asset('images/ball$ballnum.png'),
      ),
    );
  }
}