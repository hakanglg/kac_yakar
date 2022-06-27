import 'package:flutter/material.dart';
import '../service/gas_service.dart';

import '../../../product/model/gas_model.dart';
import '../../../product/service/project_dio.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _DenemeViewState();
}

class _DenemeViewState extends State<SplashView> with ProjectDioMixin {
  late final IGasService gasService;

  List<Result?> gasResource = [];
  List<Result?> dieselResource = [];
  List<Result?> lpgResource = [];

  var isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gasService = GasService(service);
    _fetch();
  }

  void changeLoading() {
    isLoading = !isLoading;
  }

  Future<void> _fetch() async {
    changeLoading();
    dieselResource = (await gasService.fetchDieselPrice())?.result ?? [];
    gasResource = (await gasService.fetchGasPrice())?.result ?? [];
    lpgResource = (await gasService.fetchLpgPrice())?.result ?? [];
    setState(() {});
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Test"),
        ),
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  ListTile(
                    title: Text(
                        "Dizel fiyatı:${dieselResource[7]?.dizel.toString()}"),
                  ),
                  ListTile(
                    title: Text(
                        "Benzin fiyatı:${gasResource[5]?.benzin.toString()}"),
                  ),
                  ListTile(
                    title:
                        Text("LPG fiyatı:${lpgResource[12]?.lpg.toString()}"),
                  ),
                ],
              ));
  }
}
