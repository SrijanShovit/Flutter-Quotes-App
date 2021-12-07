import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'package:quotes/quote.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: Quotes(),
  ));
}

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  // List<String> quotes = [
  //   "Be yourself,everybody else is already taken",
  //   "I have nothing to declare except my genius",
  //   "The truth is rarely pure and never simple"
  // ];

  List<Quote> quotes = [
    Quote(author: 'abc2', text: 'Jhakaas'),
    Quote(author: 'Srijan', text: 'Jhoot mat bolo'),
    Quote(author: 'abcf', text: 'Abra ka Daabra'),
  ];

  //creating widget to display tha data in card

  //better way is to create a widget of Card class itself
  // Widget quoteTemplate(quote){
  //   return QuoteClass(quote :quote);             //passing quote as argument
  //   //By extracting widget
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Awesome Quotes'),
        centerTitle: true,
      ),
      body: Column(
          // children: quotes.map((quote) => Text(quote)).toList(),

          //Now trying to output quote object
          //children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList()

          //now taking individual quotes and passing it to quoteTemplate function
          //children: quotes.map((quote) => quoteTemplate(quote)).toList()

          children: quotes
              .map((quote) => QuoteClass(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList()

          //take each item in quotes as quote and return as text
          //iterable converted to list because children property expects  a list
          //map() cycles through a list of data and perform some operation on data
          ),
    );
  }
}
