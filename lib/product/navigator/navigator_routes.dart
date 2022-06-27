import 'package:kac_yakar/feature/splash/view/splash_view.dart';

import '../../feature/home/view/home_view.dart';
import '../../feature/onboard/view/onboard_view.dart';

class NavigatorRoutes {
  static const slash = "/";
  final items = {
    NavigateRoutes.splash.withParaf: (context) => SplashView(),
    NavigateRoutes.onboard.withParaf: (context) =>
        OnboardView(), // Splash Lottie LEARN
    NavigateRoutes.home.withParaf: ((context) =>
        HomeView()), // NavigationHomeView
  };
}

enum NavigateRoutes { onboard, home, splash }

extension NavigateRoutesExtension on NavigateRoutes {
  String get withParaf => "/$name";
}
