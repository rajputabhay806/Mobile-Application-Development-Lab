// LABSHEET-3 - Q14
// Question: Create a Checkbox to select whether the user agrees to the terms and conditions.

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
        body: _TermsScreen(),
      ),
    );
  }
}

class _TermsScreen extends StatefulWidget {
  @override State<_TermsScreen> createState() => _TermsScreenState();
}
class _TermsScreenState extends State<_TermsScreen> {
  bool agree = false;
  @override Widget build(BuildContext context) => Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CheckboxListTile(value: agree, onChanged: (v) => setState(() => agree = v ?? false), title: const Text('I agree to the terms and conditions')),
      Text(agree ? 'Terms Accepted' : 'Please accept the terms'),
    ]),
  );
}