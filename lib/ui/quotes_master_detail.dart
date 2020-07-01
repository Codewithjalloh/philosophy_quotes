import 'package:flutter/material.dart';
import 'package:philosophyquotes/model/quote_model.dart';
import 'package:philosophyquotes/ui/quote_details.dart';
import 'package:philosophyquotes/ui/quote_listing.dart';

class QuotesMasterDetailSceen extends StatefulWidget {
  @override
  _QuotesMasterDetailSceenState createState() => _QuotesMasterDetailSceenState();
}

class _QuotesMasterDetailSceenState extends State<QuotesMasterDetailSceen> {

  static const int tabletBreakpoint = 600;
  Quote _selectedQuote;
  Widget _buildMobileLayout() {
    return QuoteListing(
      quoteSelectedCallback: (quoteSelected) {
        Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context) {
            return QuoteDetails(
              isInTableLayoutMode: false,
              quote: quoteSelected,
            );
          }
        ));
      },
    );
  }

  Widget _buildTableLayout() {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: Material(
            elevation: 13.0,
            child: QuoteListing(
              quoteSelectedCallback: (quote) {
                setState(() {
                  _selectedQuote = quote;
                });
              },
              quoteSelected: _selectedQuote,
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: QuoteDetails(
            isInTableLayoutMode: true,
            quote: _selectedQuote,
          ),
        )

      ],
    );

  }



  @override
  Widget build(BuildContext context) {

    Widget content;
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    var orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.portrait && shortestSide < tabletBreakpoint) {
      // mobile goes here
      content = _buildMobileLayout();

    }  else {
      // tablet goes here
      content = _buildTableLayout();
    }



    return Scaffold(
      appBar: AppBar(
        title: Text("Philosophy Quotes"),
      ),
      body: content,
    );
  }
}
