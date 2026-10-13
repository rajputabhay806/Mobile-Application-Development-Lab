import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Pass numbers and sum',
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
  final a = TextEditingController(); final b = TextEditingController();
  @override
  void initState() { super.initState();  }
  @override
  Widget build(BuildContext context) {

return Scaffold(appBar: AppBar(title: const Text('Pass numbers and sum')),
 body: Padding(padding: const EdgeInsets.all(20), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
  TextField(controller: a, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'First number')), TextField(controller: b, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Second number')),
  const SizedBox(height: 16),
  ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(text: 'Sum: ${(int.tryParse(a.text) ?? 0) + (int.tryParse(b.text) ?? 0)}'))), child: const Text('Calculate')),
 ])));

  }
}


class DetailPage extends StatelessWidget {
 final String text;
 const DetailPage({super.key, required this.text});
 @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Details')),
  body: Center(child: Padding(padding: const EdgeInsets.all(20), child: Text(text, style: const TextStyle(fontSize: 22)))));
}
