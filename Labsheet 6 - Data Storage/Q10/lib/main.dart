import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() => runApp(const LabApp());
class LabApp extends StatelessWidget {
 const LabApp({super.key});
 @override Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, title: 'Clear SharedPreferences', theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal), home: const HomePage());
}
class HomePage extends StatefulWidget {
 const HomePage({super.key});
 @override State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 String value = 'Example data';
 @override void initState() { super.initState();  }

@override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Clear Stored Data')), body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text(value), ElevatedButton(onPressed: () async { final p = await SharedPreferences.getInstance(); await p.setString('sample', 'Example data'); setState(() => value = 'Example data'); }, child: const Text('Store')), ElevatedButton(onPressed: () async { final p = await SharedPreferences.getInstance(); await p.clear(); setState(() => value = 'Cleared'); }, child: const Text('Clear all'))])));

}
