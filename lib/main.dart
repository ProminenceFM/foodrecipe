import 'package:flutter/material.dart';
import 'package:foodrecipe/components/app_bar.dart';
import 'package:foodrecipe/make_page.dart';


void main() {
  runApp(const foodRecipeApp());
}

class foodRecipeApp extends StatelessWidget {
  const foodRecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Recipe App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: const Color(0x30303030),
      ),
      home: const FoodRecipePage(),
    );
  }
}

class FoodRecipePage extends StatelessWidget {
  const FoodRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PageAppBar(),
        body: MakePage(),
        );
  }
}