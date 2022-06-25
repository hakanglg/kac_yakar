enum LottieItems { onboardNavigator }

extension LottieItemsExtension on LottieItems {
  String _path() {
    switch (this) {
      case LottieItems.onboardNavigator:
        return 'onboard_nav';
    }
  }

  String get lottiePath => "assets/lottie/lottie_${_path()}.json";
}
