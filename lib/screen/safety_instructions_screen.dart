import 'package:flutter/material.dart';

class SafetyInstructionsScreen extends StatefulWidget {
  const SafetyInstructionsScreen({super.key});

  @override
  State<SafetyInstructionsScreen> createState() =>
      _SafetyInstructionsScreenState();
}

class _SafetyInstructionsScreenState extends State<SafetyInstructionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: []),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.play_arrow),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
