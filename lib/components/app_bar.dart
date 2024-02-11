import 'package:flutter/material.dart';

class AppBarSet extends StatelessWidget {
  const AppBarSet({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
