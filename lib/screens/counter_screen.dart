import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 25);

    return Scaffold(
        appBar: AppBar(
          title: const Text('CounterScreen'),
          elevation: 5,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Counter Clicks',
                style: fontSize30,
              ),
              Text(
                '$counter',
                style: fontSize30,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomFloatingActions());
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        FloatingActionButton(
            child: Icon(Icons.exposure_plus_1_outlined), onPressed: null),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero_outlined), onPressed: null),
        FloatingActionButton(
            child: Icon(Icons.exposure_minus_1_outlined), onPressed: null),
      ],
    );
  }
}
