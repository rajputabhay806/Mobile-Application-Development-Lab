// LABSHEET-2 - Q24
// Question: Design a simple student dashboard containing profile information and different menu cards.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Student Dashboard')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(radius: 30, child: Icon(Icons.person)),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Rahul Sharma', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      Text('BCA - Semester 2'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  children: [
                    _card(Icons.book, 'Courses'),
                    _card(Icons.event_available, 'Attendance'),
                    _card(Icons.grade, 'Results'),
                    _card(Icons.person, 'Profile'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _card(IconData icon, String title) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 45),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
