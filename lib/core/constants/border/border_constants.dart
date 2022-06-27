import 'package:flutter/cupertino.dart';

import '../color/color_constants.dart';

class BorderConstants {
  static BorderConstants instance = BorderConstants._init();
  BorderConstants._init();

  final radiusCircular = BorderRadius.circular(50);

  final radiusAllLow =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(15));
  final radiusAllNormal =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(25));
  final radiusAllHigh =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50));

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
