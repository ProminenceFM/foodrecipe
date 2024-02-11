import 'package:flutter/material.dart';

class MakePageVideo extends StatelessWidget {
  const MakePageVideo({super.key, required this.videoimage});

  final String videoimage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 18.0),
      child: Center(
          child: Stack(alignment: Alignment.center, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Expanded(
            child: Image.asset(
              videoimage,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Image.asset('assets/images/Playbutton.png'),
      ])),
    );
  }
}
