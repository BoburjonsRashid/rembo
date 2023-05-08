import 'package:flutter/material.dart';
import 'package:rembo/pages/detail_page.dart';
import 'package:rembo/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        DetailPage.id: (context) => const DetailPage(input: '')
      },
    );
  }
}
