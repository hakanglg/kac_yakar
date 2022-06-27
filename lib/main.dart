import 'package:flutter/material.dart';
import 'package:kac_yakar/product/global/theme/theme_notifier.dart';
import 'package:kac_yakar/product/navigator/navigator_routes.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider<ThemeNotifier>(
          create: (context) => ThemeNotifier()),
    ], child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: context.watch<ThemeNotifier>().getTheme,
      initialRoute: NavigateRoutes.home.withParaf,
      routes: NavigatorRoutes().items,
    );
  }
}
