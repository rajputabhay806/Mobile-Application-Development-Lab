// LABSHEET-3 - Q19
// Question: Use a Switch to turn a setting ON and OFF.

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
        body: _SwitchScreen(),
      ),
    );
  }
}

class _SwitchScreen extends StatefulWidget {
  @override State<_SwitchScreen> createState() => _SwitchScreenState();
}
class _SwitchScreenState extends State<_SwitchScreen> {
  bool on = false;
  @override Widget build(BuildContext context) => Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Switch(value: on, onChanged: (v) => setState(() => on = v)),
      Text(on ? 'Setting ON' : 'Setting OFF', style: const TextStyle(fontSize: 22)),
    ]),
  );
}