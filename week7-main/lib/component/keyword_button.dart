import 'package:flutter/material.dart';
import 'package:week7/common/const/colors.dart';
import 'package:week7/common/const/text.dart';

class KeywordButton extends StatefulWidget {
  const KeywordButton({
    super.key,
    required this.keyword,
  });

  final String keyword;

  @override
  State<KeywordButton> createState() => _KeywordButtonState();
}

class _KeywordButtonState extends State<KeywordButton> {
  bool active = false;
  _setActive() {
    setState(() {
      active = !active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _setActive();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: WHITE,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: active ? Color(0xFF313131) : Color(0xFF818181),
              width: 1.0,
            ),
          ),
          child: Center(
            child: Text(
              "#${widget.keyword}",
              style: TextStyle(
                fontSize: 13,
                fontWeight: W800,
                color: active ? Color(0xFF313131) : Color(0xFF818181),
              ),
            ),
          ),
        ));
  }
}
