import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() => runApp(const LabApp());
class LabApp extends StatelessWidget {
 const LabApp({super.key});
 @override Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, title: 'First Launch Welcome', theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal), home: const HomePage());
}
class HomePage extends StatefulWidget {
 const HomePage({super.key});
 @override State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 String message = 'Loading...';
 @override void initState() { super.initState(); check(); }

Future<void> check() async { final p = await SharedPreferences.getInstance(); final first = !(p.getBool('launched') ?? false); await p.setBool('launched', true); setState(() => message = first ? 'Welcome! First launch.' : 'Welcome back!'); }
@override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Welcome')), body: Center(child: Text(message, style: const TextStyle(fontSize: 24))));

}
