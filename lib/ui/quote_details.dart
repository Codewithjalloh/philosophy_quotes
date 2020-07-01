import 'package:flutter/material.dart';
import 'package:philosophyquotes/model/quote_model.dart';

class QuoteDetails extends StatelessWidget {

  // declare bool for layout mode
  final bool isInTableLayoutMode;

  // declare quote from quote model
  final Quote quote;

  // construct class properties
  QuoteDetails({@required this.isInTableLayoutMode, @required this.quote});


  @override
  Widget build(BuildContext context) {

    // declare texttheme
    final TextTheme textTheme = Theme.of(context).textTheme;
    
    final Widget content = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(quote?.quote ?? "No Quote Selected",
          style: textTheme.headline5,),
        ),
        Text(quote?.name ?? "Please select a quote on the left",
        style: textTheme.subtitle1,),
      ],
    );

    if (isInTableLayoutMode) {
      return Center(child: content,);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(quote?.name ?? "No Jokes"),
      ),
      backgroundColor: Colors.yellow,
      body: Center(
        child: content,
      ),
    );
  }
}
