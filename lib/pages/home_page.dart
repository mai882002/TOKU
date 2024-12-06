import 'package:flutter/material.dart';
import 'package:languages_app/pages/colors_page.dart';
import 'package:languages_app/pages/family_members_page.dart';
import 'package:languages_app/pages/numbers_page.dart';
import 'package:languages_app/pages/phrases_page.dart';
import 'package:languages_app/widgets/letters.dart';

import '../widgets/custom_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffeeaeca),
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Letters(letter: 'T', color: Colors.deepOrange),
            Letters(letter: 'O', color: Colors.green),
            Letters(letter: 'K', color: Colors.purpleAccent),
            Letters(letter: 'U', color: Colors.blue),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffFFBED4),
              Color(0xffA6C1FF),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Category(
                  imgPadding: 40,
                  textPadding: 30,
                  height: MediaQuery.sizeOf(context).height / 2.5,
                  textColor: const Color(0xff1CB6CE),
                  img: 'assets/images/numbers.jpg',
                  text: 'Numbers',
                  backgroundColor: const Color(0xffEAFFF8),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const NumbersPage();
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Category(
                  textPadding: 40,
                  height: MediaQuery.sizeOf(context).height / 3.3,
                  textColor: const Color(0xffA31069),
                  img: 'assets/images/colors.jpg',
                  text: 'Colors',
                  backgroundColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const ColorsPage();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Category(
                  imgPadding: 20,
                  textPadding: 20,
                  height: MediaQuery.sizeOf(context).height / 3,
                  textColor: const Color.fromARGB(255, 252, 85, 140),
                  img: 'assets/images/1.jpg',
                  text: 'Phrases',
                  backgroundColor: Color(0xfffce9e2),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const PhrasesPage();
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Category(
                  textPadding: 25,
                  height: MediaQuery.sizeOf(context).height / 2.7,
                  textColor: Colors.white,
                  img: 'assets/images/family.jpg',
                  text: '   Family\n Members',
                  backgroundColor: const Color(0xffA1922B),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const FamilyMembersPage();
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
