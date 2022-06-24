import 'package:flutter/cupertino.dart';
import 'package:kac_yakar/core/constants/color/color_constants.dart';

class BorderConstants {
  static BorderConstants instance = BorderConstants._init();
  BorderConstants._init();

  final radiusCircular = BorderRadius.circular(15);

  final purplelinearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      ColorConstants.instance.legendaryLevender,
      ColorConstants.instance.magnolia
    ],
    tileMode: TileMode.mirror,
  );
}
