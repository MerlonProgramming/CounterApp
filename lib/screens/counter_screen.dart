import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  void increise() {
    counter++;
    setState(() {});
  }

  void descrease() {
    counter--;
    setState(() {});
  }

  void resetZero() {
    counter = 0;
    setState(() {});
  }

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
        floatingActionButton: CustomFloatingActions(
          increiseFn: increise,
          descreaseFn: descrease,
          resetZeroFn: resetZero,
        ));
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increiseFn;
  final Function descreaseFn;
  final Function resetZeroFn;

  const CustomFloatingActions({
    Key? key,
    required this.increiseFn,
    required this.descreaseFn,
    required this.resetZeroFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increiseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero_outlined),
          onPressed: () => resetZeroFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => descreaseFn(),
        ),
      ],
    );
  }
}
