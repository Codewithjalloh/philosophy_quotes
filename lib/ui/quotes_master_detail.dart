import 'package:flutter/material.dart';
import 'package:philosophyquotes/model/quote_model.dart';
import 'package:philosophyquotes/ui/quote_details.dart';
import 'package:philosophyquotes/ui/quote_listing.dart';

class QuotesMasterDetailSceen extends StatefulWidget {
  @override
  _QuotesMasterDetailSceenState createState() => _QuotesMasterDetailSceenState();
}

class _QuotesMasterDetailSceenState extends State<QuotesMasterDetailSceen> {

  // declare static cont for the tablebreakpoint
  static const int tabletBreakpoint = 600;

  //
  Quote _selectedQuote;

  // function for the mobile layout
  Widget _buildMobileLayout() {

    // return custom quote listing
    return QuoteListing(

      quoteSelectedCallback: (quoteSelected) {
        // push to quote details
        Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context) {
            return QuoteDetails(
              // make the tablet layout false here
              isInTableLayoutMode: false,
              // quote selected
              quote: quoteSelected,
            );
          }
        ));
      },
    );
  }
// function for the tablet layout
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
    // declare var to get the context shortesside
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    // declare var to get the context orientation
    var orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.portrait && shortestSide < tabletBreakpoint) {
      // mobile goes here
      content = _buildMobileLayout();

    }  else {
      // tablet goes here
      content = _buildTableLayout();
    }



    return Scaffold(
      // app bar title
      appBar: AppBar(
        title: Text("Philosophy Quotes"),
      ),
      // return content for the scaffold body
      body: content,
    );
  }
}
