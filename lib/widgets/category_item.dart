import 'package:flutter/material.dart';
import 'package:news_app/constant/route.dart';
import 'package:news_app/model/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoute.categoryScreen,
            arguments: {"categoryName": category.categoryName});
      },
      child: Column(
        children: [
          Center(
            child: Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(category.image), fit: BoxFit.fill)),
            ),
          ),
          Center(
              child: Text(
            category.categoryName,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              // fontFamily: "Jotia",
            ),
          )),
        ],
      ),
    );
  }
}
