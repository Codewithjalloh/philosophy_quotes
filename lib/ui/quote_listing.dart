import 'package:flutter/material.dart';
import 'package:philosophyquotes/model/quote_model.dart';

class QuoteListing extends StatelessWidget {

  // declare change value
  final ValueChanged<Quote> quoteSelectedCallback;
  // declare quote selected
  final Quote quoteSelected;

  // construct class properties
  QuoteListing({@required this.quoteSelectedCallback, this.quoteSelected});


  @override
  Widget build(BuildContext context) {
    // retunr a listview
    return ListView(
      //
      children: quoteList.map((quote) {
        // return a container
        return Container(
          // child is listile
          child: ListTile(
            // text widget to get the quote
            title: Text(quote.quote),
            // when you tap you will get the quote selected call back
            onTap: () => quoteSelectedCallback(quote),
            // selcted assigned to quote
            selected: quoteSelected == quote,
          ),
          // box decoration
          decoration: BoxDecoration(
            // shape rectangle
            shape: BoxShape.rectangle,
            // the the border radius to 4.5
            borderRadius: BorderRadius.circular(4.5),
          ),
        );
      }).toList(),
    );
  }
}
