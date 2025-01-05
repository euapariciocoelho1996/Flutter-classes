import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnChangedExample(),
    );
  }
}

class OnChangedExample extends StatefulWidget {
  @override
  _OnChangedExampleState createState() => _OnChangedExampleState();
}

class _OnChangedExampleState extends State<OnChangedExample> {
  String _text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Capturar com onChanged"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  _text = value;
                });
              },
              decoration: const InputDecoration(
                labelText: "Digite algo",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Text("Texto Atual: $_text"),
          ],
        ),
      ),
    );
  }
}
