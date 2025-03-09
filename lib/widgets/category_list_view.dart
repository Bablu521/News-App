import 'package:flutter/material.dart';
import 'package:news_app/data.dart';
import 'package:news_app/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return CategoryItem(category:categories[index]);
              },
              itemCount: categories.length,
            );
  }
}