import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigator.pop',
    theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
    home: const HomePage(),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() { super.initState();  }
  @override
  Widget build(BuildContext context) {

return Scaffold(appBar: AppBar(title: const Text('First Screen')),
 body: Center(child: ElevatedButton(
  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(text: 'Second Screen'))),
  child: Text('Open Second Screen'))));

  }
}


class DetailPage extends StatelessWidget {
 final String text;
 const DetailPage({super.key, required this.text});
 @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text(text)),
  body: Center(child: Text(text, style: const TextStyle(fontSize: 28))));
}
