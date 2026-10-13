// LABSHEET-3 - Q23
// Question: Create a Flutter Student Feedback Form with name, rating options, feedback field, and Submit button.

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
        body: _FeedbackScreen(),
      ),
    );
  }
}

class _FeedbackScreen extends StatefulWidget {
  @override State<_FeedbackScreen> createState() => _FeedbackScreenState();
}
class _FeedbackScreenState extends State<_FeedbackScreen> {
  int rating = 3; final name = TextEditingController(), feedback = TextEditingController(); String message = '';
  @override Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(20),
    children: [
      TextField(controller: name, decoration: const InputDecoration(labelText: 'Name', border: OutlineInputBorder())),
      const SizedBox(height: 12),
      const Text('Rating'),
      for (int i = 1; i <= 5; i++) RadioListTile(value: i, groupValue: rating, onChanged: (v) => setState(() => rating = v!), title: Text('$i Star')),
      TextField(controller: feedback, maxLines: 4, decoration: const InputDecoration(labelText: 'Feedback', border: OutlineInputBorder())),
      const SizedBox(height: 12),
      ElevatedButton(onPressed: () => setState(() => message = 'Thank you, ${name.text}! Rating: $rating'), child: const Text('Submit')),
      Text(message),
    ],
  );
}