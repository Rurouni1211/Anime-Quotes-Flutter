import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  int _index = 0;

  List Quotes = [
    "The world isn’t perfect. But it’s there for us, doing the best it can… that’s what makes it so damn beautiful.",
    "To know sorrow is not terrifying. What is terrifying is to know you can’t go back to happiness you could have.",
    "Those who stand at the top determine what’s wrong and what’s right! This very place is neutral ground! Justice will prevail, you say? But, of course, it will! Whoever wins this war becomes justice!",
    "Whatever you lose, you’ll find it again. But what you throw away you’ll never get back.",
    "You Can Die at Anytime but Living takes True Courage",
    "If you don’t take risks, you can’t create a future!",
    "If I die trying at least I tried",
    "The loneliest people are the kindest. The saddest people smile the brightest. The most damaged people are the wisest. All because they don’t wish to see anyone else suffer the way they did.",
    "Death isn’t kind. It’s dark and black and as far as you… As far as you can see you’re all alone. There’s no one else.",
    "I’m fine, except… it’s a terrible day for rain.",
    "Why should I apologize for being a monster? Has anyone ever apologized for turning me into one?"
  ];

  List authors = [
    "— Roy Mustang (Full Metal Alchemist)",
    "— Matsumoto Rangiku (Bleach)",
    "— Don Quixote Doflamingo (One Piece)",
    "— Kenshin Himura (Rurouni Kenshin)",
    "- Kenshin Himura (Rurouni Kenshin)",
    "— Monkey D. Luffy (One Piece)",
    "— Monkey D. Luffy (One Piece)",
    "— Jellal Fernandes",
    "— Mei Misaki",
    "— Roy Mustang",
    "— Juuzou Suzuya"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Container(
                      width: 350,
                      height: 200,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Center(
                          child: Text(
                        Quotes[_index % Quotes.length],
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.blueGrey.shade300),
                      )))),
              Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Container(
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Center(
                          child: Text(
                        authors[_index % authors.length],
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.white70),
                      )))),
              Divider(
                thickness: 2.3,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: TextButton.icon(
                      onPressed: _showQuote,
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.indigoAccent.shade100,
                          textStyle: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      icon: Icon(Icons.wb_sunny),
                      label: Text("Quotation"))),
              Spacer(),
            ]),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index += 1;
    });
  }
}
