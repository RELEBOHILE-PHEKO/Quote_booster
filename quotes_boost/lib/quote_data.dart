import 'dart:math';

class QuoteData {
  static final List<Map<String, String>> _quotes = [
    {
      'quote': 'Believe you can and you\'re halfway there.',
      'tip': 'Confidence is key. Take that first step!'
    },
    {
      'quote': 'Your limitation—it’s only your imagination.',
      'tip': 'Push beyond what you think is possible.'
    },
    {
      'quote': 'Push yourself, because no one else is going to do it for you.',
      'tip': 'Stay motivated. You’ve got this!'
    },
    {
      'quote': 'Sometimes later becomes never. Do it now.',
      'tip': 'Act today — small actions build big results.'
    },
    {
      'quote': 'Great things never come from comfort zones.',
      'tip': 'Growth happens when you challenge yourself.'
    },
    {
      'quote': 'Dream it. Wish it. Do it.',
      'tip': 'Turn ideas into actions.'
    },
    {
      'quote': 'Success doesn’t just find you. You have to go out and get it.',
      'tip': 'Be proactive. Make your own opportunities.'
    },
    {
      'quote': 'The harder you work for something, the greater you’ll feel when you achieve it.',
      'tip': 'Hard work pays off — keep grinding.'
    },
  ];

  static Map<String, String> getRandomQuote() {
    final random = Random();
    return _quotes[random.nextInt(_quotes.length)];
  }
}
