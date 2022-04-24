import 'package:flutter/material.dart';

class ResponstiveHelper {
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1020;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;
}
