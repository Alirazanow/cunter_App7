import 'package:flutter/material.dart';

class Cunter extends StatefulWidget {
  const Cunter({super.key});

  @override
  State<Cunter> createState() => _CunterState();
}

class _CunterState extends State<Cunter> {
  // variabes

  int _couter = 0;

  //functins/methods

  void _increCounter() {
    setState(() {
      _couter++;
    });
  }

  // ui

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          children: [
            Center(child: const Text('You have Push This Button Many Times')),
            Center(child: Text(_couter.toString())),
            Center(
              child: ElevatedButton(
                onPressed: _increCounter,
                child: const Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
