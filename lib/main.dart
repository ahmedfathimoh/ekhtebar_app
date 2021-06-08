import 'package:ekhtebar_app/pages/exampPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ExampApp());
}

class ExampApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            'أختير معلوماتك',
            style: TextStyle(
                fontSize: 38.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
          centerTitle: true,
        ),
        body: ExampPage(),
      ),
    );
  }
}
