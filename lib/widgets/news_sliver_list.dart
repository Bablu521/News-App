import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/widgets/news_item.dart';

class NewsSliverList extends StatelessWidget {
  final List<ArticleModel> articles;
const NewsSliverList({super.key , required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (BuildContext context, int index) {
        return NewsItem(article : articles[index]);
      },
      itemCount: articles.length,
    );
  }
}
