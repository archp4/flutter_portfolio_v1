import 'package:flutter/material.dart';
import 'package:portfilo/consts.dart';

Widget hireButton() {
  return SizedBox(
    height: 45,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        primary: constantValue.yellowColor,
      ),
      onPressed: () {},
      child: Text(
        "HIRE ME",
        style: TextStyle(
          color: constantValue.blackColor,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ),
  );
}
