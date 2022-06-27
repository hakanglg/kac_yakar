import 'package:flutter/material.dart';
import 'feature/splash/view/splash_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const SplashView(),
      // initialRoute: NavigateRoutes.onboard.withParaf,
      // routes: NavigatorRoutes().items,
    );
  }
}
