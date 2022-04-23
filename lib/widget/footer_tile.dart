import 'package:flutter/material.dart';
import 'package:portfilo/widget/custom_textstyle.dart';

Widget footerTitle({required String text}) {
  return Text(
    text,
    style: footerTitleTextStyle(),
  );
}

Widget footerSubtitle({required String text, required VoidCallback onTap}) {
  return TextButton(
    onPressed: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Text(
        text,
        style: footerSubtitleTextStyle(),
      ),
    ),
  );
}
