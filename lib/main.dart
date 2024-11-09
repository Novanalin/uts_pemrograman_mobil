import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DataList(),
    );
  }
}

class DataList extends StatelessWidget {
  // Daftar List yang ada di ListView
  final List<String> list = [
    "Android",
    "Java",
    "PHP",
    "Hadoop",
    "Sap",
    "Python",
    "Ajax",
    "C++",
    "Ruby",
    "Rails"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView',
            style: TextStyle (color: Colors.white)),
        backgroundColor: Colors.blueAccent, // Mengubah warna AppBar
      ),
      body: ListView.separated(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(list[index]),
          );
        },
        separatorBuilder: (context, index) {
          return Divider (
            color: Colors.grey,
            thickness: 0.5,
          );
        }
      ),
    );
  }
}