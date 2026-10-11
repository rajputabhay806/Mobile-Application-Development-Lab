// LABSHEET-2 - Q13
// Question: Design a simple login screen using Text, TextField, Button, and Image widgets.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Login Screen')),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Icon(Icons.account_circle, size: 90),
              const SizedBox(height: 20),
              Text('Welcome Back')
              const TextField(decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder())),
              const SizedBox(height: 15),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 15),
              ElevatedButton(onPressed: () {}, child: const Text('Login')),
            ],
          ),
        ),
      ),
    );
  }
}
