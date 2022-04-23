import 'package:flutter/material.dart';
import 'package:portfilo/widget/custom_textstyle.dart';

Widget footerTitle({required String text}) {
  return Text(
    text,
    style: footerTitleTextStyle(),
  );
}

Widget footerSubtitle({required String text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 3),
    child: Text(
      text,
      style: footerSubtitleTextStyle(),
    ),
  );
}
