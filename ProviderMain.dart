import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/providers/count_provider.dart';
import 'package:provider_state/screens/count_example.dart';
import 'package:provider_state/stateful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CountProvider(),
      child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: const CountExample(),
    ),
    );
  }
}


