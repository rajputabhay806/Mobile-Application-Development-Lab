// LABSHEET-3 - Q6
// Question: Create Submit and Reset buttons for a simple form.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Lab Sheet 3')),
        body: _SimpleFormScreen(),
      ),
    );
  }
}

class _SimpleFormScreen extends StatefulWidget {
  @override State<_SimpleFormScreen> createState() => _SimpleFormScreenState();
}
class _SimpleFormScreenState extends State<_SimpleFormScreen> {
  final controller = TextEditingController();
  String message = '';
  @override Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(20),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(controller: controller, decoration: const InputDecoration(labelText: 'Enter text', border: OutlineInputBorder())),
      const SizedBox(height: 15),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        ElevatedButton(onPressed: () => setState(() => message = 'Submitted: ${controller.text}'), child: const Text('Submit')),
        OutlinedButton(onPressed: () => setState(() { controller.clear(); message = ''; }), child: const Text('Reset')),
      ]),
      const SizedBox(height: 20), Text(message),
    ]),
  );
}