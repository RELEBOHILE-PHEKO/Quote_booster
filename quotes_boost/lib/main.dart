import 'package:flutter/material.dart';
import 'quote_screen.dart';

void main() {
  runApp(const QuoteBoosterApp());
}

class QuoteBoosterApp extends StatelessWidget {
  const QuoteBoosterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote Booster',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const QuoteScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
