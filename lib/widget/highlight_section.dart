import 'package:flutter/cupertino.dart';
import 'package:portfilo/models/consts.dart';

Widget highlightSection({required String text}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: const Color(0xffffffff).withOpacity(0.08),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
    child: Text(
      text,
      style: TextStyle(
        color: constantValue.yellowColor,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
