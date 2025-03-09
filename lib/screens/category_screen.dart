import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var category =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String categoryName = category["categoryName"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          "$categoryName News",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: "Jotia",
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.maybePop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListBuilder(
            categoryName: categoryName,
          )
        ],
      ),
    );
  }
}
