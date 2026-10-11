// LABSHEET-2 - Q25
// Question: Design a personal profile/home screen by combining Text, Image, Icon, Container, Row, Column, Card, and Button widgets.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My Profile')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 60,
                child: Icon(Icons.person, size: 70),
              ),
              const SizedBox(height: 15),
              const Text(
                'Abhay ',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const Text('Semester 5. Section A'),
              const SizedBox(height: 25),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.school),
                  title: const Text('College'),
                  subtitle: const Text('COER College'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.book),
                  title: const Text('Course'),
                  subtitle: const Text('BCA - Semester 2'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.email),
                  title: const Text('Email'),
                  subtitle: const Text('rahul@example.com'),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text('Edit')),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Contact'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
