// LABSHEET-3 - Q8
// Question: Calculate percentage from three subject marks entered by the user.

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
        body: _PercentageScreen(),
      ),
    );
  }
}

class _PercentageScreen extends StatefulWidget {
  @override State<_PercentageScreen> createState() => _PercentageScreenState();
}
class _PercentageScreenState extends State<_PercentageScreen> {
  final c = List.generate(3, (_) => TextEditingController());
  String result = '';
  @override Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(20),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      for (int i = 0; i < 3; i++) TextField(controller: c[i], keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'Subject ${i + 1} marks')),
      ElevatedButton(onPressed: () {
        final total = c.fold<double>(0, (s, x) => s + (double.tryParse(x.text) ?? 0));
        setState(() => result = 'Percentage = ${(total / 3).toStringAsFixed(2)}%');
      }, child: const Text('Calculate')),
      Text(result, style: const TextStyle(fontSize: 22)),
    ]),
  );
}