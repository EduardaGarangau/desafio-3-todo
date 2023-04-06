import 'package:flutter/material.dart';

class ScreenSize {
  bool isWebXL({required BuildContext context}) {
    return MediaQuery.of(context).size.width > 1280.0;
  }

  bool isWebL({required BuildContext context}) {
    return MediaQuery.of(context).size.width > 800.0 &&
        MediaQuery.of(context).size.width < 1280.0;
  }

  bool isWebS({required BuildContext context}) {
    return MediaQuery.of(context).size.width > 600.0 &&
        MediaQuery.of(context).size.width < 800.0;
  }

  bool isMobile({required BuildContext context}) {
    return MediaQuery.of(context).size.width > 319.0 &&
        MediaQuery.of(context).size.width <= 599.0;
  }

  bool isWebContext({required BuildContext context}) {
    final isWebExtraLarge = isWebXL(context: context);
    final isWebLarge = isWebL(context: context);
    final isWebSmall = isWebS(context: context);

    return isWebExtraLarge || isWebLarge || isWebSmall;
  }

  Size size({required BuildContext context}) {
    return MediaQuery.of(context).size;
  }

  double totalWidth({required BuildContext context}) {
    return MediaQuery.of(context).size.width;
  }

  double totalHeight({required BuildContext context}) {
    return MediaQuery.of(context).size.height;
  }
}
