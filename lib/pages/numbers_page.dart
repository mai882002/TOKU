import 'package:flutter/material.dart';
import 'package:languages_app/models/item_model.dart';
import 'package:languages_app/widgets/custom_item.dart';
import 'package:languages_app/widgets/letters.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<ItemModel> numbers = const [
    ItemModel(
      enName: 'one',
      jpName: 'ichi',
      image: 'assets/images/numbers/number_one.png',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
      enName: 'two',
      jpName: 'ni',
      image: 'assets/images/numbers/number_two.png',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemModel(
      enName: 'three',
      jpName: 'san',
      image: 'assets/images/numbers/number_three.png',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemModel(
      enName: 'four',
      jpName: 'shi',
      image: 'assets/images/numbers/number_four.png',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemModel(
      enName: 'five',
      jpName: 'go',
      image: 'assets/images/numbers/number_five.png',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemModel(
      enName: 'six',
      jpName: 'roku',
      image: 'assets/images/numbers/number_six.png',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    ItemModel(
      enName: 'seven',
      jpName: 'shichi',
      image: 'assets/images/numbers/number_seven.png',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    ItemModel(
      enName: 'eight',
      jpName: 'hachi',
      image: 'assets/images/numbers/number_eight.png',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    ItemModel(
      enName: 'nine',
      jpName: 'kyuu',
      image: 'assets/images/numbers/number_nine.png',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    ItemModel(
      enName: 'ten',
      jpName: 'juu',
      image: 'assets/images/numbers/number_ten.png',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Letters(letter: 'N', color: Colors.amber),
            Letters(letter: 'U', color: Colors.green),
            Letters(letter: 'M', color: Colors.purpleAccent),
            Letters(letter: 'B', color: Colors.blue),
            Letters(letter: 'E', color: Colors.indigo),
            Letters(letter: 'R', color: Colors.red),
            Letters(letter: 'S', color: Colors.teal),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Image.asset('assets/images/numbers_page.jpg'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: numbers.length,
              (context, index) => CustomItem(
                btnColor: const Color(0xff8E4D12),
                imgColor: const Color(0xffEFB987),
                item: numbers[index],
                itemColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
