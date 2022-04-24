import 'package:flutter/cupertino.dart';
import 'package:portfilo/models/consts.dart';
import 'package:portfilo/models/responstive_helper.dart';

Widget highlightSection({required String text, required BuildContext context}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: const Color(0xffffffff).withOpacity(0.08),
    ),
    padding: ResponstiveHelper.isDesktop(context)
        ? const EdgeInsets.symmetric(horizontal: 25, vertical: 10)
        : const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
    child: Text(
      text,
      style: TextStyle(
        color: constantValue.yellowColor,
        fontSize: ResponstiveHelper.isDesktop(context) ? 20 : 12,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
