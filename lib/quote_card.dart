import 'package:flutter/material.dart';

import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function()? delete;
  QuoteCard(this.quote , this.delete);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber.shade100,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade900,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: delete,
              child: const Text('Delete Quote'),
            )
          ],
        ),
      ),
    );
  }
}
