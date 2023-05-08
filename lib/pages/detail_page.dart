import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static const String id = "detail_page";
  final String input;

  const DetailPage({Key? key, required this.input}) : super(key: key);
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.input),
      ),
    );
  }
}
