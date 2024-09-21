import 'package:flutter/material.dart';

import 'package:expressions/expressions.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  String output = "0";
  void buttonPressed(String value) {
    setState(() {
      if(value == "C") {
        output = "";
      }

      else if (value == "⌫") {
        if (output.isNotEmpty) {
          output = output.substring(0, output.length - 1);
        }
      }

      else if (output.length == 60) {
        output = "Invalid";
      }

      else if (value == "=") {
        output = output.replaceAll("÷", "/");
        var expression = Expression.parse(output);
        final evaluator = ExpressionEvaluator();
        var result = evaluator.eval(expression, {});
        output = result.toString();
      }

      else {
        output += value;
      }
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 21, 21), 
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.centerRight,
              color: const Color.fromARGB(255, 21, 21, 21),
              child: Text(
                output,
                style: const TextStyle(
                  fontSize: 48.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              padding: const EdgeInsets.all(16.0),
              itemCount: 20,
              itemBuilder: (context, index) {
                final buttons = [
                  'C', '⌫', '%', '00',
                  '7', '8', '9', '÷',
                  '4', '5', '6', '-',
                  '1', '2', '3', '+',
                  '0', '.', '=', '*'
                ];
                return ElevatedButton(
                  onPressed: () => buttonPressed(buttons[index]),
                    
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ["="].contains(buttons[index]) ? Color.fromARGB(255, 122, 175, 236) : (["*", "+", "-", "÷"].contains(buttons[index]) ? Color.fromARGB(255, 86, 126, 207) :  Color.fromARGB(255, 69, 69, 69)),
                    foregroundColor: ["*", "+", "-", "÷", "="].contains(buttons[index]) ? Color.fromARGB(247, 255, 255, 255) : Color.fromARGB(247, 129, 188, 255), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    buttons[index],
                    style: const TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
