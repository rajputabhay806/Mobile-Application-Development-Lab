import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Student list and detail',
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

return Scaffold(appBar: AppBar(title: const Text('Student List')),
 body: ListView(children: ['Amit | 101 | BCA', 'Neha | 102 | MCA', 'Rahul | 103 | BCA'].map((s) =>
  ListTile(title: Text(s), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(text: s))))).toList()));

  }
}


class DetailPage extends StatelessWidget {
 final String text;
 const DetailPage({super.key, required this.text});
 @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Student Detail')), body: Center(child: Text(text)));
}
