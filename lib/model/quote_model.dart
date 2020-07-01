import 'package:flutter/cupertino.dart';

class Quote {

  // declared properties
  final int id;
  final String name;
  final String quote;

  // declared required constructor
  Quote({
    @required this.id,
    @required this.name,
    @required this.quote
});
}

// declare quote list 
final List<Quote> quoteList = <Quote> [

  Quote(
    id: 1,
    name: "Plato",
    quote: "Wise men speak because they have something to say fools because they have to say something."

  ),

  Quote(
      id: 2,
      name: "Bertrand Russell",
      quote: "Do not fear to be eccentric in opinion, for every opinion now accepted was once eccentric.",

  ),

  Quote(
      id: 3,
      name: "Friedrich Nietzsche",
      quote: "When we are tired, we are attacked by ideas we conquered long ago.",

  ),

  Quote(
      id: 4,
      name: "Socrates",
      quote: "I cannot teach anybody anything. I can only make them think",

  ),

  Quote(
      id: 5,
      name: "Lao Tsu, Tao Teh Ching",
      quote: "Those who know do not speak. Those who speak do not know.",

  ),

  Quote(
      id: 6,
      name: "Ludwig Wittgenstein",
      quote: "A serious and good philosophical work could be written consisting entirely of jokes",

  ),

  Quote(
      id: 7,
      name: "Aristotle",
      quote: "Those who educate children well are more to be honored than they who produce them; for these only gave them life, those the art of living well.",

  ),
  Quote(
      id: 8,
      name: "Mark Twain",
      quote: "The easy confidence with which I know another man's religion is folly teaches me to suspect that my own is also",

  ),
  Quote(
      id: 9,
      name: "Epictetus",
      quote: "If anyone tells you that a certain person speaks ill of you, do not make excuses about what is said of you but answer, He was ignorant of my other faults, else he would not have mentioned these alone.",

  ),
  Quote(
      id: 10,
      name: "Karl Marx,",
      quote: "The philosophers have only interpreted the world, in various ways. The point, however, is to change it.",

  ),

  Quote(
      id: 11,
      name: "Fyodor Dostoevsky",
      quote: "Man is a mystery. It needs to be unravelled, and if you spend your whole life unravelling it, don't say that you've wasted time. I am studying that mystery because I want to be a human being.",

  ),


];