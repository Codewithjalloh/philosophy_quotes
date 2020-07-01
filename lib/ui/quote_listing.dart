import 'package:flutter/material.dart';
import 'package:philosophyquotes/model/quote_model.dart';

class QuoteListing extends StatelessWidget {

  final ValueChanged<Quote> quoteSelectedCallback;
  final Quote quoteSelected;

  QuoteListing({@required this.quoteSelectedCallback, this.quoteSelected});


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: quoteList.map((quote) {
        return Container(
          child: ListTile(
            title: Text(quote.quote),
            onTap: () => quoteSelectedCallback(quote),
            selected: quoteSelected == quote,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(4.5),
          ),

        );

      }).toList(),
    );
  }
}
