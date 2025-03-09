import 'package:dio/dio.dart';
import 'package:news_app/model/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService({required this.dio});

  Future<List<ArticleModel>> getNews({ required String categoryName}) async {
    try {
      var response = await dio.get(
          "https://newsapi.org/v2/top-headlines?category=$categoryName&apiKey=f26a09123fd54360a972f76d93800e02");
      Map<String, dynamic> data = response.data;
      List<dynamic> articles = data["articles"];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          title: article["title"],
          description: article["description"],
          image: article["urlToImage"],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
