import 'package:flutter/material.dart';

import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int score = 1;
  List<Quote> quotes = [
    Quote(author: 'author one', text: 'quote one'),
    Quote(author: 'author two', text: 'quote two'),
    Quote(author: 'author three', text: 'quote three'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Empolyee ID Card'),
        centerTitle: false,
        backgroundColor: Colors?.cyan[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 5),
        child: ListView(
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/night-sky.jpg'),
                radius: 40,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.cyan.shade400,
              child: Text(
                'ID: 12',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  backgroundColor: Colors.cyan.shade400,
                ),
              ),
            ),
            Divider(
              height: 60,
              color: Colors.cyan.shade300,
            ),
            Text(
              'Name:',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade600,
                  letterSpacing: 1.5),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Al Amin Hossain',
              style: TextStyle(
                fontSize: 30,
                color: Colors.cyan.shade700,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Designation:',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade600,
                  letterSpacing: 1.5),
            ),
            Text(
              'Front-end Developer',
              style: TextStyle(fontSize: 30, color: Colors.cyan.shade700),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Company:',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade600,
                  letterSpacing: 1.5),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Mistri Solutions Ltd.',
              style: TextStyle(fontSize: 30, color: Colors.cyan.shade700),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.amber.shade400,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'alamin.mistrisolutions@gmail.com',
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Score:',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade600,
                  letterSpacing: 1.5),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$score',
              style: TextStyle(fontSize: 30, color: Colors.cyan.shade700),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Quotes:',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade600,
                  letterSpacing: 1.5),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: quotes
                  .map((quote) => QuoteCard(
                    quote, 
                    () {
                        setState(() {
                          quotes.remove(quote);
                        });
                      })
                    )
                  .toList(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            score += 1;
          });
        },
        child: const Text(
          '+',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors?.cyan[800],
      ),
    );
  }
}
