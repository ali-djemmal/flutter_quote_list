import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList() ,
));
class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [ Quote(text: 'wild ',author: 'author1'),
    Quote(text: 'text2',author: 'author2'),
    Quote(text: 'text3',author: 'author3'),
    Quote(text: 'text4',author: 'author4')

  ];
 Widget quoteTemplate (quote){
   return new QuoteCard(quote: quote);

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Barstazz Algeria',
              style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
                fontSize: 24.0,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amberAccent[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(


            children : quotes.map((f) => QuoteCard(
                quote: f ,
                delete : (){
                  setState(() {
                    return quotes.remove(f);
                  });
               }

            )).toList(),
        ),
      ),

    );
  }
}
