import 'package:kac_yakar/core/constants/app/app_constants.dart';

enum LottieItems { onboardNavigator }

extension LottieItemsExtension on LottieItems {
  String _path() {
    switch (this) {
      case LottieItems.onboardNavigator:
        return 'onboard_nav';
    }
  }

  String get lottiePath =>
      "${ApplicationConstants.FONT_ASSETS_PATH}lottie_${_path()}.json";
}
