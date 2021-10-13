import 'package:flutter/cupertino.dart';

enum ScreenStatus {
  mobile,
  tablet,
  desktop,
}

class ScreenSize {
  static ScreenStatus getScreenStatus(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (size.width >= 1200) {
      return ScreenStatus.desktop;
    }
    if (size.width < 1200 && size.width >= 900) {
      return ScreenStatus.tablet;
    } else {
      return ScreenStatus.mobile;
    }
  }
}
