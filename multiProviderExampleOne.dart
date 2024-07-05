import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/providers/example_one_provider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

double value = 1.0;

class _ExampleOneState extends State<ExampleOne> {
  @override
  Widget build(BuildContext context) {
    print('build');
    // final exampleOneProviderVar = Provider.of<ExampleOneProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity changer with Provider'),
      ),
      body: Consumer<ExampleOneProvider>(builder: (context, value, child) {
        print('only this widget builds');
        return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
              min: 0,
              max: 1,
              value: value.value,
              onChanged: (val) {
                value.setValue(val);
              }),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration:  BoxDecoration(color: Colors.blue.withOpacity(value.value),),
                      child: const Center(child:  Text('Container 1')),
                    ),

                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration:  BoxDecoration(color: Colors.red.withOpacity(value.value),),
                      child: const Center(child:  Text('Container 2')),
                    ),
                  )
                ],
              )
        ],
      );
      },)
    );
  }
}
