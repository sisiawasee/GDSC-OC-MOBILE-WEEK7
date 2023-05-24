import 'package:flutter/material.dart';
import 'package:week7/common/const/text.dart';
import 'package:week7/component/keyword_button.dart';
import 'package:week7/component/rounded_button.dart';

class WritePage extends StatefulWidget {
  const WritePage({super.key});

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  final List<String> keywords = [
    "우유부단",
    "조용한\n또라이",
    "잔잔한 타입",
    "밈 중독자",
    "담담함",
    "장난꾸러기",
    "감정적인",
    "욱하는",
    "유머러스한",
    "고집이 센",
    "여유로운",
    "귀찮이즘",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F8F8),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: const Color(0xFFECECEC),
            height: 1.0,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Color(0xFF313131),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, size: 16),
        ),
        title: const Text(
          "웰시코기 캐해 작성",
          style: TextStyle(
            fontSize: 16,
            fontWeight: W900,
            color: Color(0xFF313131),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 34.0,
          horizontal: 24.0,
        ),
        children: [
          const Center(
            child: Column(
              children: [
                Text(
                  "지인들의 캐해 키워드는?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: W900,
                    color: Color(0xFF313131),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "3개 이상 선택해 주세요",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: W600,
                    color: Color(0xFFA6A6A6),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          GridView.builder(
              primary: false,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 9,
                  childAspectRatio: 103 / 64),
              itemCount: keywords.length,
              itemBuilder: (context, index) {
                return KeywordButton(keyword: keywords[index]);
              })
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: RoundedButton(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const WritePage(),
              ),
            );
          },
          text: "작성 완료",
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
