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
              icon: const Icon(Icons.more_horiz),
            ),
          ],
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              MakePageTitleSection(maketitle: "How to make French Toast"),
              MakePageVideo(videoimage: 'assets/images/img1.png'),
              MakePageReviewSection(
                  rating: '4,5', countreviews: '(300 reviews)')
            ]),
          ),
        ));
  }
}

class MakePageTitleSection extends StatelessWidget {
  const MakePageTitleSection({super.key, required this.maketitle});

  final String maketitle;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        maketitle,
        style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 25.0,
            fontFamily: 'Poppins',
            color: Colors.black),
        textAlign: TextAlign.left,
      )
    ]);
  }
}

class MakePageVideo extends StatelessWidget {
  const MakePageVideo({super.key, required this.videoimage});

  final String videoimage;

  @override
  Widget build(BuildContext context) {
    return Center(
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
    ]));
  }
}

class MakePageReviewSection extends StatelessWidget {
  const MakePageReviewSection(
      {super.key, required this.rating, required this.countreviews});

  final String rating;
  final String countreviews;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.star,
          color: Color.fromARGB(255, 238, 255, 0),
        ),
        Text(
          rating,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        Text(
          countreviews,
          style: const TextStyle(
            color: Colors.black,
          ),
        )
      ],
    );
  }
}

class MakePageAccountSection extends StatelessWidget {
  const MakePageAccountSection(
      {super.key,
      required this.accountimage,
      required this.accountname,
      required this.accountlocation});

  final String accountimage;
  final String accountname;
  final String accountlocation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [Image.asset(accountimage),
          Column(
            children: [
              Text(accountname),
              Row(
                children:[
                Image.asset('assets/images/Location.png'),
                Text(accountlocation)
                ]
              )
            ]
          )],
        ),
        ElevatedButton(onPressed: onPressed, 
        child: Text('Follow')
      ],
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
