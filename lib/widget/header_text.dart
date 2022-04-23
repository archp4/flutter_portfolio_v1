import 'package:flutter/material.dart';

Widget headerText({required String text}) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 48,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );
}
