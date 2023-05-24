import 'package:flutter/material.dart';
import 'package:week7/common/const/text.dart';
import 'package:week7/component/keyword_box.dart';
import 'package:week7/component/rounded_button.dart';
import 'package:week7/view/write_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> images = [
    "assets/images/le_chae.jpg",
    "assets/images/ljh.jpg",
    "assets/images/minji.jpg",
    "assets/images/sakura.jpg",
    "assets/images/yjh.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            vertical: 45.0,
            horizontal: 24.0,
          ),
          children: [
            RoundedButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WritePage(),
                  ),
                );
              },
              text: "캐해 작성하기",
              isNeedIcon: true,
              icon: Icons.edit_square,
            ),
            const SizedBox(
              height: 48,
            ),
            const Text(
              "지인들의 캐해 키워드는?",
              style: TextStyle(
                fontSize: 16,
                fontWeight: W900,
                color: Color(0xFF313131),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Wrap(
              spacing: 4.0,
              runSpacing: 6.0,
              children: [
                KeywordBox(
                  keyword: "덤덤한",
                ),
                KeywordBox(
                  keyword: "살가운",
                ),
                KeywordBox(
                  keyword: "조용한",
                ),
                KeywordBox(
                  keyword: "우유부단",
                ),
              ],
            ),
            const SizedBox(
              height: 56,
            ),
            const Text(
              "지인들의 캐해 짤은?",
              style: TextStyle(
                fontSize: 16,
                fontWeight: W900,
                color: Color(0xFF313131),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            GridView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: images.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 하나의 행에 보여 줄 아이템의 개수
                childAspectRatio: 1, // 아이템의 가로, 세로 비율
                mainAxisSpacing: 9, // 수평 빈 공간
                crossAxisSpacing: 8, // 수직 빈 공간
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff818181), width: 1)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
