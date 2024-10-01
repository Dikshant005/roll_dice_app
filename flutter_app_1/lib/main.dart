import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const RollDice());
}

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  int imageNumber = 1;

  void generateRandomNumber() {
    setState(() {
      imageNumber = Random().nextInt(6) + 1; // Generate a random number between 1 and 6
    });
    print(imageNumber);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[100], 
        appBar: AppBar(title: const Text('Roll Dice')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/dice_$imageNumber.jpg',
                width: 200,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: generateRandomNumber, 
                child: const Text('Roll Dice'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
