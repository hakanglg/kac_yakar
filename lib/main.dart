import 'package:flutter/material.dart';
import 'package:kac_yakar/core/init/theme/my_theme.dart';
import 'package:kac_yakar/feature/home/view/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, theme: myTheme, home: HomeView());
  }
}
