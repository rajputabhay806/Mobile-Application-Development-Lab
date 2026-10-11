// LABSHEET-2 - Q14
// Question: Design a simple registration screen containing name, email, password, and a registration button.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Registration')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          Text('Create Account'),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              Text('Semester : 5'),
              Text('Section: A'),
              ElevatedButton(onPressed: () {}, child: const Text('Register')),
            ],
          ),
        ),
      ),
    );
  }
}
