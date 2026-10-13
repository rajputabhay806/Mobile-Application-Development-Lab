import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Pass name and course',
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
  final name = TextEditingController(); final course = TextEditingController();
  @override
  void initState() { super.initState();  }
  @override
  Widget build(BuildContext context) {

return Scaffold(appBar: AppBar(title: const Text('Pass name and course')),
 body: Padding(padding: const EdgeInsets.all(20), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
  TextField(controller: name, decoration: const InputDecoration(labelText: 'Student name')), TextField(controller: course, decoration: const InputDecoration(labelText: 'Course')),
  const SizedBox(height: 16),
  ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(text: 'Name: ${name.text} | Course: ${course.text}'))), child: const Text('Continue')),
 ])));

  }
}


class DetailPage extends StatelessWidget {
 final String text;
 const DetailPage({super.key, required this.text});
 @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Details')),
  body: Center(child: Padding(padding: const EdgeInsets.all(20), child: Text(text, style: const TextStyle(fontSize: 22)))));
}
