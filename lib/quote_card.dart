import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'quote.dart';

//whenever we require this widget we can call it by an instance of QuoteCard class
class QuoteClass extends StatelessWidget {
  //we can't use data in stateless widget so final is added
  final Quote quote;
  final Function delete;
  QuoteClass(
      {required this.quote,
      required this.delete}); //taking quote parameter in constructor and storing in a variable

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(
        children: [
          Text(quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.tealAccent,
              )),
          SizedBox(
            height: 6.0,
          ),
          Text(quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.deepPurple,
              )),
          SizedBox(
            height: 8.0,
          ),
          FlatButton.icon(
              onPressed: delete(),
              icon: Icon(Icons.delete),
              label: Text(
                'Delete quote',
                //we can't actually delete from here as data is not present in this file
              ))
        ],
      ),
    );
  }
}
