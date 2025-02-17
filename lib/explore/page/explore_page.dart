import 'package:basic_app/News_UI/Sport_UI.dart';
import 'package:basic_app/explore/widget/explore_category_widget.dart';
import 'package:basic_app/explore/widget/explore_news_widget.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  String selectedCategory = "All";

  List trendingList = ["FLutter", "Mern", "Python"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0F0F1A),
        appBar: AppBar(
          backgroundColor: Color(0xFF1C1C2E),
          title: Text("Explore", style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryButton(
                    text: "All",
                    isSelected: selectedCategory == "All",
                    onTap: () => setState(() => selectedCategory = "All"),
                  ),
                  CategoryButton(
                    text: "Sport",
                    isSelected: selectedCategory == "Sport",
                    onTap: () {
                      setState(() => selectedCategory = "Sport");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SportScreen()),
                      );
                    },
                  ),
                  CategoryButton(
                    text: "Politics",
                    isSelected: selectedCategory == "Politics",
                    onTap: () => setState(() => selectedCategory = "Politics"),
                  ),
                  CategoryButton(
                    text: "Education",
                    isSelected: selectedCategory == "Education",
                    onTap: () => setState(() => selectedCategory = "Education"),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Text("Trending on Mabobin 🔥",
              //     style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 18,
              //         fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              // Container(
              //   height: 200,
              //   color: Colors.yellow,
              //   child: ListView.builder(
              //       shrinkWrap: true,
              //       itemCount: trendingList.length,
              //       itemBuilder: (context, riyaz) {
              //         return Text(
              //           "Riyaz",
              //           style: TextStyle(color: Colors.red),
              //         );
              //       }),
              // ),
              Expanded(
                child: ListView(
                  children: [
                    NewsItem(
                      rank: "01",
                      title: "Here We Go: Onana to Manchester United!",
                      author: "Fabrizio Romano",
                      date: "19 Jul 2023",
                    ),
                    NewsItem(
                      rank: "02",
                      title: "England win Euro U21 and Colwill shines",
                      author: "Fabrizio Romano",
                      date: "25 Jul 2023",
                    ),
                    NewsItem(
                      rank: "03",
                      title: "Inter Miami unveil Leo Messi as new era begins",
                      author: "Jamagin",
                      date: "25 Jul 2023",
                    ),
                    NewsItem(
                      rank: "04",
                      title: "Arda Güler joins Real Madrid on a six-year deal",
                      author: "Bodru Gummez",
                      date: "25 Jul 2023",
                    ),
                    NewsItem(
                      rank: "04",
                      title: "Arda Güler joins Real Madrid on a six-year deal",
                      author: "Bodru Gummez",
                      date: "25 Jul 2023",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
