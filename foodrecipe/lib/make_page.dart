import 'package:flutter/material.dart';
import 'package:foodrecipe/components/make_account.dart';
import 'package:foodrecipe/components/make_ingredients.dart';
import 'package:foodrecipe/components/make_reviews.dart';
import 'package:foodrecipe/components/make_title.dart';
import 'package:foodrecipe/components/make_video.dart';

class MakePage extends StatelessWidget {
  const MakePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          MakePageTitleSection(maketitle: "How to make french\ntoast"),
          MakePageVideo(videoimage: 'assets/images/img1.png'),
          MakePageReviewSection(rating: '4,5', countreviews: '(300 reviews)'),
          MakePageAccountSection(
              accountimage: 'assets/images/unplashimg.png',
              accountname: 'Robert Anny',
              accountlocation: 'Bali, Indonesia'),
          MakePageIngredientsSection(),
        ]),
      ),
    );
  }
}
