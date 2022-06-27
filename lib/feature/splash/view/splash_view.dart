import 'package:flutter/material.dart';
import 'package:kac_yakar/feature/splash/service/gas_service.dart';
import 'package:provider/provider.dart';

import '../../../product/service/project_dio.dart';
import '../viewmodel/splash_provider.dart';

class SplashView extends StatelessWidget with ProjectDioMixin {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashProvider(GasService(service)),
      builder: (context, child) {
        return Scaffold(
            appBar: AppBar(
              title: const Text("Splash"),
            ),
            body: context.watch<SplashProvider>().isLoading
                ? const Center(child: CircularProgressIndicator())
                : Center(
                    child: Column(
                    children: const [
                      Text("HI!"),
                    ],
                  )));
      },
    );
  }
}
