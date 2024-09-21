import 'package:example_application/count_down_timer.dart';
import 'package:flutter/material.dart';
import 'calculator.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Calculator App',
      home: CountDownTimer(),
    );
  }
}
