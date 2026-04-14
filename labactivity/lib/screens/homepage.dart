import 'package:flutter/material.dart';

class labactivity1 extends StatefulWidget {
  const labactivity1({super.key});

  @override
  State<labactivity1> createState() => _labactivity1State();
}

class _labactivity1State extends State<labactivity1> {
  String title = 'Homepage';
  int counter = 0;
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  double total = 0;

  @override
  void initState() {
    title = 'Welcome to My Homepage';
    number1.text = "0";
    number2.text = "0";
    super.initState();
  }

  void handleAddition() {
    setState(() {
      total = double.parse(number1.text) + double.parse(number2.text);
    });
  }

  void handleSubtraction() {
    setState(() {
      total = double.parse(number1.text) - double.parse(number2.text);
    });
  }

  void handleMultiplication() {
    setState(() {
      total = double.parse(number1.text) * double.parse(number2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text(title)),
          Center(child: Text(counter.toString())),
          TextField(controller: number1),
          SizedBox(height: 20),
          TextField(controller: number2),
          ElevatedButton(
            onPressed: () {
              handleAddition();
            },
            child: Text("Add Number"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              handleSubtraction();
            },
            child: Text("Subtract Number"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              handleMultiplication();
            },
            child: Text("Multiply Number"),
          ),
          SizedBox(height: 20),
          Text('Total: $total'),
        ],
      ),
    );
  }
}
