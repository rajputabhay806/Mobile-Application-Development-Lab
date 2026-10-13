// LABSHEET-3 - Q21
// Question: Create a Flutter Login Form UI with username, password, Login button, and Reset button.

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
        body: _LoginScreen(),
      ),
    );
  }
}

class _LoginScreen extends StatefulWidget {
  @override State<_LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<_LoginScreen> {
  final user = TextEditingController(), pass = TextEditingController();
  String message = '';
  @override Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(20),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(controller: user, decoration: const InputDecoration(labelText: 'Username', border: OutlineInputBorder())),
      const SizedBox(height: 12),
      TextField(controller: pass, obscureText: true, decoration: const InputDecoration(labelText: 'Password', border: OutlineInputBorder())),
      const SizedBox(height: 15),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        ElevatedButton(onPressed: () => setState(() => message = 'Welcome ${user.text}'), child: const Text('Login')),
        OutlinedButton(onPressed: () => setState(() { user.clear(); pass.clear(); message = ''; }), child: const Text('Reset')),
      ]),
      Text(message),
    ]),
  );
}