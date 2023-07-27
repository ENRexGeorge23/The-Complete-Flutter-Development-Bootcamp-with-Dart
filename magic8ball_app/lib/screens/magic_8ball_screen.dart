import 'dart:math';
import 'package:shake/shake.dart';
import 'package:flutter/material.dart';

class MagicEightBallScreen extends StatefulWidget {
  const MagicEightBallScreen({super.key});

  @override
  State<MagicEightBallScreen> createState() => _MagicEightBallScreenState();
}

class _MagicEightBallScreenState extends State<MagicEightBallScreen> {
  int eightBallAnswer = 1;

  ShakeDetector? _changeAnswer;

  @override
  void initState() {
    super.initState();
    _changeAnswer = ShakeDetector.autoStart(
      onPhoneShake: () {
        setState(() {
          eightBallAnswer = Random().nextInt(5) + 1;
        });
      },
    );
  }

  @override
  void dispose() {
    _changeAnswer?.stopListening();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/ball$eightBallAnswer.png',
              ),
              onPressed: () {
                _changeAnswer;
              },
            ),
          ),
        ],
      ),
    );
  }
}
