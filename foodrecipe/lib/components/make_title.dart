import 'package:flutter/material.dart';

class MakePageTitleSection extends StatelessWidget {
  const MakePageTitleSection({super.key, required this.maketitle});

  final String maketitle;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        maketitle,
        style: const TextStyle(
          height: 1.5,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          fontSize: 26.0,
          color: Color(0xFF303030),
        ),
        textAlign: TextAlign.left,
      )
    ]);
  }
}
