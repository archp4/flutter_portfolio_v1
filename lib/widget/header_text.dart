import 'package:flutter/material.dart';
import 'package:portfilo/models/responstive_helper.dart';

Widget headerText({required String text, required BuildContext context}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: ResponstiveHelper.isDesktop(context) ? 48 : 24,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );
}
