import 'package:flutter/material.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({super.key});

  @override
  State<CountDownTimer> createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count Down Timer"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 128, 177, 200),
      ),
      body: Padding(
        padding: const EdgeInsets.all(75.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Enter a number and press start"),
            const TextField(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 130, 128, 128),
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
                child: const Text("Start"),

              ),
            ),
            Text("0", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
