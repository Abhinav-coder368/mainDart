import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/providers/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  // void initState() {
  //   super.initState();
  //   final countProvider = Provider.of<CountProvider>(context,listen: false);
  //   Timer.periodic(Duration(seconds: 1), (timer) { 
  //       countProvider.setCount();
  //   });
  // }

  Widget build(BuildContext context) {
    print('build');
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count'),
      ),
      body: Center(
        child: Consumer<CountProvider>(
        builder: (context, value, child) {
          print('only this widget builds');
          return Text(
            
            value.count.toString(),
            style: const TextStyle(fontSize: 40),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
