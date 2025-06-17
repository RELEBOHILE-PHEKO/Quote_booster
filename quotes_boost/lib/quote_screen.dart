import 'package:flutter/material.dart';
import 'quote_data.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  String _quote = '';
  String _tip = '';

  void _generateQuote() {
    final randomQuote = QuoteData.getRandomQuote();
    setState(() {
      _quote = randomQuote['quote']!;
      _tip = randomQuote['tip']!;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(Icons.lightbulb, color: Colors.yellowAccent),
            SizedBox(width: 10),
            Expanded(child: Text(_tip)),
          ],
        ),
        backgroundColor: Colors.deepPurple,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.all(16),
        duration: Duration(seconds: 5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quote Booster'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.format_quote, size: 80, color: Colors.deepPurple),
            SizedBox(height: 30),
            Text(
              _quote.isEmpty ? 'Tap the button for a quote!' : '"$_quote"',
              style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: _generateQuote,
              icon: Icon(Icons.refresh, color: Colors.white),
              label: Text(
                'Inspire Me',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                textStyle: TextStyle(fontSize: 18),
                backgroundColor: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
