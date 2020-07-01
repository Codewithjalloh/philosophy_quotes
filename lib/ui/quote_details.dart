import 'package:flutter/material.dart';
import 'package:philosophyquotes/model/quote_model.dart';

class QuoteDetails extends StatelessWidget {

  final bool isInTableLayoutMode;
  final Quote quote;

  QuoteDetails({@required this.isInTableLayoutMode, @required this.quote});

  @override
  Widget build(BuildContext context) {
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
