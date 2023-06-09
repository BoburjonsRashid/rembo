import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rembo/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = 'Detail ga kirish';
  Future _openDetils() async {
    await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return const DetailPage(input: "Salom");
    }));
    if (kDebugMode) {
      text = 'Detail chiqdi';
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
            onPressed: () async {
              await _openDetils();
            },
            color: Colors.blue,
            child:  Text(text)),
      ),
    );
  }
}
