import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';

class NewsItem extends StatelessWidget {
  final ArticleModel article;
 const NewsItem({super.key , required this.article});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                image: DecorationImage(
                    image: NetworkImage(article.image ?? "https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=1024x1024&w=is&k=20&c=blBt3PJbOSEZF5_zB5YgKYeq9Zx_RMOLntX_nI3lliQ="), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(article.title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: "Jotia",
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 5,
          ),
          Text(
              article.description ?? "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              )),
        ],
      ),
    );
  }
}
