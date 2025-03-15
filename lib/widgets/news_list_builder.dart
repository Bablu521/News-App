import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/network/news_service.dart';
import 'package:news_app/widgets/news_sliver_list.dart';

class NewsListBuilder extends StatefulWidget {
  final String categoryName;
  const NewsListBuilder({super.key ,required this.categoryName});

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  late Future<List<ArticleModel>> future;
  @override
  void initState() {
    super.initState();
    future = NewsService(dio:Dio()).getNews(categoryName: widget.categoryName);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsSliverList(
                articles: snapshot.data as List<ArticleModel>);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Text("Error: ${snapshot.error}"),
            );
          } else {
            return SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Center(child: CircularProgressIndicator()),
                ],
              ),
            );
          }
        });
  }
}
