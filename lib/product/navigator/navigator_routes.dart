import '../../feature/home/view/home_view.dart';
import '../../feature/onboard/view/onboard_view.dart';

class NavigatorRoutes {
  static const slash = "/";
  final items = {
    NavigateRoutes.onboard.withParaf: (context) =>
        OnboardView(), // Splash Lottie LEARN
    NavigateRoutes.home.withParaf: ((context) =>
        HomeView()), // NavigationHomeView
  };
}

enum NavigateRoutes { onboard, home }

extension NavigateRoutesExtension on NavigateRoutes {
  String get withParaf => "/$name";
}
