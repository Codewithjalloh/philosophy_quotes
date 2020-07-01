import 'package:flutter/material.dart';
import 'package:philosophyquotes/ui/quotes_master_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Philosophy Quotes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuotesMasterDetailSceen(),
    );
  }
}

