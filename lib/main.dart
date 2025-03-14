import 'package:flutter/material.dart';
import 'package:news_app/constant/route.dart';
import 'package:news_app/screens/category_screen.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/webview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AppRoute.categoryScreen : (context)=>CategoryScreen(),
        AppRoute.webViewScreen : (context)=>WebViewScreen()
      },
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
