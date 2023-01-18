import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class NumberPickerScreen extends StatefulWidget {
  const NumberPickerScreen({Key? key}) : super(key: key);

  @override
  State<NumberPickerScreen> createState() => _NumberPickerScreenState();
}

class _NumberPickerScreenState extends State<NumberPickerScreen> {
  int currentValue = 1;
  int currentIntValue = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              NumberPicker(
                value: currentValue,
                minValue: 0,
                maxValue: 100,
                onChanged: (value) => setState(() => currentValue = value),
              ),
              Text(
                'Current value: $currentValue',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                splashColor: Colors.red,
                splashRadius: 60,
                tooltip: 'minus',
                icon: const Icon(Icons.remove),
                onPressed: () => setState(() {
                  final newValue = currentIntValue - 5;
                  currentIntValue = newValue.clamp(0, 100);
                }),
              ),
              Text(
                'Current int value: $currentIntValue',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                splashColor: Colors.amber,
                splashRadius: 60,
                tooltip: 'plus',
                icon: const Icon(Icons.add),
                onPressed: () => setState(() {
                  final newValue = currentIntValue + 10;
                  currentIntValue = newValue.clamp(0, 100);
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
