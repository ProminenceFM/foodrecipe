import 'package:flutter/material.dart';
import 'package:foodrecipe/components/make_account.dart';
import 'package:foodrecipe/components/make_ingredients.dart';
import 'package:foodrecipe/components/make_reviews.dart';
import 'package:foodrecipe/components/make_title.dart';
import 'package:foodrecipe/components/make_video.dart';

void main() {
  runApp(const foodApp());
}

class foodApp extends StatelessWidget {
  const foodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: const Color(0x30303030),
      ),
      home: const FoodPreparePage(),
    );
  }
}

class FoodPreparePage extends StatelessWidget {
  const FoodPreparePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              ),
            ),
          ],
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              MakePageTitleSection(maketitle: "How to make french toast"),
              MakePageVideo(videoimage: 'assets/images/img1.png'),
              MakePageReviewSection(
                  rating: '4,5', countreviews: '(300 reviews)'),
              MakePageAccountSection(
                  accountimage: 'assets/images/unplashimg.png',
                  accountname: 'Robert Anny',
                  accountlocation: 'Bali, Indonesia'),
              MakePageIngredientsSection(),
            ]),
          ),
        ));
  }
}