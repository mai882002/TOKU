import 'package:flutter/material.dart';
import 'package:languages_app/models/item_model.dart';
import 'package:languages_app/widgets/letters.dart';

import '../widgets/custom_item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<ItemModel> colors = const [
    ItemModel(
      enName: 'black',
      jpName: 'Burakku',
      image: 'assets/images/colors/color_black.png',
      sound: 'sounds/colors/black.wav',
    ),
    ItemModel(
      enName: 'white',
      jpName: 'Shiroi',
      image: 'assets/images/colors/color_white.png',
      sound: 'sounds/colors/white.wav',
    ),
    ItemModel(
      enName: 'brown',
      jpName: 'Chairo',
      image: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      enName: 'yellow',
      jpName: 'Kiiro',
      image: 'assets/images/colors/yellow.png',
      sound: 'sounds/colors/yellow.wav',
    ),
    ItemModel(
      enName: 'dusty yellow',
      jpName: 'Hokori ppoi kiiro',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    ItemModel(
      enName: 'gray',
      jpName: 'Gurē',
      image: 'assets/images/colors/color_gray.png',
      sound: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      enName: 'green',
      jpName: 'Midori',
      image: 'assets/images/colors/color_green.png',
      sound: 'sounds/colors/green.wav',
    ),
    ItemModel(
      enName: 'red',
      jpName: 'Aka',
      image: 'assets/images/colors/color_red.png',
      sound: 'sounds/colors/red.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Letters(letter: 'C', color: Colors.orange),
            Letters(letter: 'O', color: Colors.green),
            Letters(letter: 'L', color: Colors.purpleAccent),
            Letters(letter: 'O', color: Colors.blue),
            Letters(letter: 'R', color: Colors.amber),
            Letters(letter: 'S', color: Colors.green),
          ],
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffFFBED4),
                Color(0xffA6C1FF),
              ],
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Image.asset(
              'assets/images/colors.jpg',
              height: 170,
              fit: BoxFit.fill,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: colors.length,
              (context, index) => CustomItem(
                btnColor: Colors.pink,
                imgColor: const Color(0xffFFBED4),
                item: colors[index],
                itemColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
