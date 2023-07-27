import 'package:flutter/material.dart';
import 'package:magic8ball_app/screens/magic_8ball_screen.dart';

class EightBallApp extends StatelessWidget {
  const EightBallApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MagicEightBallScreen(),
    );
  }
}
