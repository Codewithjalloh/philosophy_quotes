import 'package:flutter/material.dart';
import 'package:philosophyquotes/ui/quotes_master_detail.dart';

// main app
void main() {
  runApp(MyApp());
}

// stateless widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return material app
    return MaterialApp(
      // app title
      title: 'Philosophy Quotes',
      // theme widget
      theme: ThemeData(
        // color blue
        primarySwatch: Colors.blue,
      ),
      // direct to quote screen
      home: QuotesMasterDetailSceen(),
    );
  }
}

