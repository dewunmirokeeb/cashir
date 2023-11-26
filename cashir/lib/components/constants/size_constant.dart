import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class SizeConstant {
  static Size size = MediaQuery.of(navigatorKey.currentContext!).size;
}
