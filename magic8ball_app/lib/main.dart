import 'package:flutter/material.dart';
import 'package:magic8ball_app/screens/magic_8ball_screen.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Ask me anything'),
          backgroundColor: Colors.blue,
        ),
        body: const MagicEightBallScreen(),
      ),
    ),
  );
}
