import 'package:flutter/material.dart';

class MakePageReviewSection extends StatelessWidget {
  const MakePageReviewSection(
      {super.key, required this.rating, required this.countreviews});

  final String rating;
  final String countreviews;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          Icons.star,
          color: Color.fromARGB(255, 255, 217, 0),
          size: 18.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Text(
            rating,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            countreviews,
            style: const TextStyle(
              color: Color(0xFFA9A9A9),
            ),
          ),
        )
      ],
    );
  }
}
