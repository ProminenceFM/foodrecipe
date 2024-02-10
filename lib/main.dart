import 'package:flutter/material.dart';

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
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: const SingleChildScrollView(
          child: Column(children: [
            MakePageTitleSection(maketitle: "How to make French Toast"), 
          ]),
        )
        );
  }
}

class MakePageTitleSection extends StatelessWidget {
  const MakePageTitleSection({super.key, required this.maketitle});

  final String maketitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      maketitle,
      style: const TextStyle(fontWeight: FontWeight.bold,
      color: Colors.black),
    );
  }
}

class MakePageVideo extends StatelessWidget {
  const MakePageVideo({super.key, required this.videoimage});

  final String videoimage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment:Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(videoimage, width:300.0, height:200, fit: BoxFit.cover,),
          ),
          Image.asset('assets/images/Playbutton.jpg')
        ]
      )
    );
  }
}


// class AppBarComponent extends StatelessWidget {
//   const AppBarComponent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       leading: IconButton(
//         onPressed: (){},
//         icon: const Icon(Icons.arrow_back),
//       ),
//       actions: [
//         IconButton(
//           onPressed: (){},
//           icon: const Icon(Icons.more_vert),
//         ),
//       ],
//     );
//   }
// }
