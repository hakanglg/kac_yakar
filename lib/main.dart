import 'package:flutter/material.dart';
import 'package:kac_yakar/feature/deneme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const DenemeView(),
      // initialRoute: NavigateRoutes.onboard.withParaf,
      // routes: NavigatorRoutes().items,
    );
  }
}
