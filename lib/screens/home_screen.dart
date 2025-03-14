import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_builder.dart';
import 'package:news_app/widgets/category_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          "Top News",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: "Jotia",
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: SizedBox(
            height: 20,
          )),
          SliverToBoxAdapter(
              child: SizedBox(height: 110, child: CategoryListView())),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 30,
          )),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("General News",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Jotia",
                    fontSize: 34,
                    fontWeight: FontWeight.bold)),
          )),
          NewsListBuilder(
            categoryName: "general",
          )
        ],
      ),
    );
  }
}
