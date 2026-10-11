// LABSHEET-2 - Q15
// Question: Design a simple college home screen containing college name, logo, and menu options.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('College Home ')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 55,
                child: Icon(Icons.school, size: 65),
              ),
              const SizedBox(height: 15),
              const Text(
                'ABC College',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text('Courses'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.About_page),
                title: const Text('About'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.contact_page),
                title: const Text('Contact'),
                onTap: () {},
              ),
              Text('Student : Abhay'),
            ],
          ),
        ),
      ),
    );
  }
}
