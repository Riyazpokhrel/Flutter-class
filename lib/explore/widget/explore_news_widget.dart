import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final String rank;
  final String title;
  final String author;
  final String date;

  NewsItem(
      {required this.rank,
      required this.title,
      required this.author,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(rank,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text(title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 2),
          Text("$author • $date • 2.4M Readers",
              style: TextStyle(color: Colors.grey, fontSize: 12)),
          Divider(color: Colors.grey[800]),
        ],
      ),
    );
  }
}
