import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextInputExample(),
    );
  }
}

class TextInputExample extends StatefulWidget {
  @override
  _TextInputExampleState createState() => _TextInputExampleState();
}

class _TextInputExampleState extends State<TextInputExample> {
  // Cria um controlador para o TextField
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Capturar Dados do Usuário"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: "Digite algo",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Acessa o texto digitado pelo usuário
                final String userInput = _controller.text;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Texto Capturado"),
                    content: Text("Você digitou: $userInput"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: const Text("Exibir Texto"),
            ),
          ],
        ),
      ),
    );
  }
}
