import 'package:flutter/material.dart';

class MakePageIngredient extends StatelessWidget {
  const MakePageIngredient(
      {super.key,
      required this.ingredientimage,
      required this.ingredientname,
      required this.ingredientweight});

  final String ingredientimage;
  final String ingredientname;
  final String ingredientweight;

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(top: 12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.transparent, width: 2),
            color: Color(0xFFF1F1F1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.only(right: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.transparent, width: 2),
                        color: Colors.white,
                      ),
                      child: Image.asset(ingredientimage)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(ingredientname,
                        style: const TextStyle(
                            color: Color(0xFF303030),
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0)),
                  )
                ],
              ),
              Text(ingredientweight, style: TextStyle(color: Color(0xFFA9A9A9),))
            ],
          ),
        ),
      ],
    );
  }
}

class MakePageIngredientColumn extends StatelessWidget {
  const MakePageIngredientColumn({super.key});

  Widget build(BuildContext context) {
    return const Column(
      children: [
        MakePageIngredient(
            ingredientimage: 'assets/images/food1.png',
            ingredientname: 'Bread',
            ingredientweight: '200g'),
        MakePageIngredient(
            ingredientimage: 'assets/images/food2.png',
            ingredientname: 'Eggs',
            ingredientweight: '200g'),
        MakePageIngredient(
            ingredientimage: 'assets/images/food1.png',
            ingredientname: 'Milk',
            ingredientweight: '200g'),
        MakePageIngredient(
            ingredientimage: 'assets/images/food2.png',
            ingredientname: 'Bread',
            ingredientweight: '200g'),
        
        MakePageIngredient(
            ingredientimage: 'assets/images/food1.png',
            ingredientname: 'Bread',
            ingredientweight: '200g')
        
      ],
    );
  }
}

class MakePageIngredientsSection extends StatelessWidget {
  const MakePageIngredientsSection({super.key});

  Widget build(BuildContext context) {
    return const Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Ingredients',
            style: TextStyle(
              color: Color(0xFF303030),
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text('5 Items', style: TextStyle(color: Color(0xFFA9A9A9),fontSize: 17,))
        ],
      ),
      MakePageIngredientColumn(),
    ]);
  }
}
